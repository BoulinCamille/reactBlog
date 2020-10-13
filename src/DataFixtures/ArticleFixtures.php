<?php

namespace App\DataFixtures;

use App\Entity\Article;
use App\Entity\Comment;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;

class ArticleFixtures extends Fixture
{   
    protected $faker;

    public function load(ObjectManager $manager)
    {
        $faker = \Faker\Factory::create('fr_FR');
        
        for ($i = 1; $i <=10; $i++)
        {
            $article = new Article();
            $article->setTitle($faker->title)
                    ->setAuthor($faker->name)
                    ->setContent($faker->paragraph)
                    ->setCreatedAt($faker->dateTime)
                    ->setImage($faker->imageUrl);

            for ($j = 1; $j<=5; $j++)
            {
                $comment = new Comment();

                $content = '<p>' . join($faker->paragraphs(2), '</p><p>') . '</p>';
                $comment->setAuthor($faker->name)
                        ->setContent($content)
                        ->setCreatedAt($faker->dateTime)
                        ->setArticle($article);
                $manager->persist($comment);
            }
            
            $manager->persist($article);

            $manager->flush();
        }


    }
}
