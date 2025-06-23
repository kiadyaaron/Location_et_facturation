<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20250623054529 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql(<<<'SQL'
            ALTER TABLE affectation ADD date_debut DATETIME NOT NULL COMMENT '(DC2Type:datetime_immutable)', ADD date_fin DATETIME NOT NULL COMMENT '(DC2Type:datetime_immutable)', ADD is_validated TINYINT(1) NOT NULL, DROP duree_utilisation, DROP mois_facturation
        SQL);
        $this->addSql(<<<'SQL'
            ALTER TABLE affectation ADD CONSTRAINT FK_F4DD61D316880AAF FOREIGN KEY (materiel_id) REFERENCES materiel (id)
        SQL);
        $this->addSql(<<<'SQL'
            ALTER TABLE affectation ADD CONSTRAINT FK_F4DD61D3D0C0049D FOREIGN KEY (chantier_id) REFERENCES chantier (id)
        SQL);
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql(<<<'SQL'
            ALTER TABLE affectation DROP FOREIGN KEY FK_F4DD61D316880AAF
        SQL);
        $this->addSql(<<<'SQL'
            ALTER TABLE affectation DROP FOREIGN KEY FK_F4DD61D3D0C0049D
        SQL);
        $this->addSql(<<<'SQL'
            ALTER TABLE affectation ADD duree_utilisation VARCHAR(255) NOT NULL, ADD mois_facturation VARCHAR(7) NOT NULL, DROP date_debut, DROP date_fin, DROP is_validated
        SQL);
    }
}
