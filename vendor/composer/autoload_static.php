<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInit0a29503e563e550c0492f019f0bc9cb7
{
    public static $prefixLengthsPsr4 = array (
        'P' => 
        array (
            'PHPMailer\\PHPMailer\\' => 20,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'PHPMailer\\PHPMailer\\' => 
        array (
            0 => __DIR__ . '/..' . '/phpmailer/phpmailer/src',
        ),
    );

    public static $classMap = array (
        'Composer\\InstalledVersions' => __DIR__ . '/..' . '/composer/InstalledVersions.php',
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInit0a29503e563e550c0492f019f0bc9cb7::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInit0a29503e563e550c0492f019f0bc9cb7::$prefixDirsPsr4;
            $loader->classMap = ComposerStaticInit0a29503e563e550c0492f019f0bc9cb7::$classMap;

        }, null, ClassLoader::class);
    }
}
