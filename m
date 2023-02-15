Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A4EA169872E
	for <lists+linux-man@lfdr.de>; Wed, 15 Feb 2023 22:14:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229828AbjBOVOM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Feb 2023 16:14:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48346 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229818AbjBOVOM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Feb 2023 16:14:12 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3CBEBD
        for <linux-man@vger.kernel.org>; Wed, 15 Feb 2023 13:14:09 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id bu23so20537287wrb.8
        for <linux-man@vger.kernel.org>; Wed, 15 Feb 2023 13:14:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RfSq5A/q0HYOflB9WxB4xCgXCTmpFPfOTMdbzKjy4HE=;
        b=pHeswhjRA/HztZ0LJRh8VTFyzhpZ8nzhGM8CaW7OYbb9d1ZP2HbV8f0Vqeni6Xxz2p
         kYUFZq+GNy6lMwN1dXKtE8D18hJGk6g9hhLa9c72n66U1+kgFnI6IpcnRXFRi7lRZxsl
         x6EOq6wQ09GInHtsMbifc1GO6oFZuPygptOfVMyrnvt2/3eO+ZSkhiRcTrKY9MFB2sxR
         50EFnq0DseHSpnwrSz33lE/Cdvsh0D0eqOSF4k+jKjGjhxDw0I95g20c35xJYx3l7Zhe
         lCENzO30Yj+XMe0gdxMnc6HkiKYDFTysq0TVsjNLoOhMs9s/lAcQ3pfV0f73kT/np6Gg
         Q/1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=RfSq5A/q0HYOflB9WxB4xCgXCTmpFPfOTMdbzKjy4HE=;
        b=zTxI+Id9HNdC0cGau9nl9tQfoBGW8CcR7p64Lj/+AM0bjFGAQgPA5WjRvzScHWpUy3
         UQPMPnHtWE4KJGzvCarl5B1Eq75agUfSmkllFtuT1rLL2ANTNuFkYlwbwU3ZbiTb3GXw
         p6KNLq8OcX0TnF9R7KtYc/7fiKn/+7NhgxoICpvir+/HQlsVK6sNNIfCthOtWXiSuDCe
         OLi1eGeD3bhGEVNuJ9Ti8JvnMtR5jvOHdkz8T4iAJIER1iFjrsePcFVFOAgn56AVxY4j
         o+pZ8nbuZ5LXGFMA+PO2HoxvYO1hr0B2K4RXI4tSdq6eN83lDfKSReqXowCjvGCAe1wm
         CpLw==
X-Gm-Message-State: AO0yUKU3e/nUyYH/jluMhUmxPYQ5+cqoUY08uDcCAIYkd3NdtAXBjX9f
        wCxS9DOg2DMZ8fQ24aVzaGY=
X-Google-Smtp-Source: AK7set82MA5M1FovWPQhpcjuBe/oArR5E0IqqlBQ93chR/jnoU77PdiGyA6Odt8jCE0OaifNpM8paw==
X-Received: by 2002:adf:db49:0:b0:2c5:51d7:f821 with SMTP id f9-20020adfdb49000000b002c551d7f821mr2423987wrj.61.1676495648084;
        Wed, 15 Feb 2023 13:14:08 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id r3-20020a5d6943000000b002c551ae8cc1sm11387240wrw.67.2023.02.15.13.14.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Feb 2023 13:14:07 -0800 (PST)
Message-ID: <aefe263e-1208-cd3f-cbfd-ea83c15ab199@gmail.com>
Date:   Wed, 15 Feb 2023 22:14:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v3 6/6] man2/: add C digit separators to clarify long
 numeric digit strings
Content-Language: en-US
To:     Brian Inglis <Brian.Inglis@Shaw.ca>,
        Linux Man Pages <linux-man@vger.kernel.org>
References: <cover.1676489380.git.Brian.Inglis@Shaw.ca>
 <3a42e44f476f084dc0fb2fa83ad5708e37818d0f.1676489381.git.Brian.Inglis@Shaw.ca>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <3a42e44f476f084dc0fb2fa83ad5708e37818d0f.1676489381.git.Brian.Inglis@Shaw.ca>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------zuBIJnAhG6FYY9lTMLv916TX"
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------zuBIJnAhG6FYY9lTMLv916TX
Content-Type: multipart/mixed; boundary="------------aMOeuu2YKum85kv6ywRD5090";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Brian Inglis <Brian.Inglis@Shaw.ca>,
 Linux Man Pages <linux-man@vger.kernel.org>
Message-ID: <aefe263e-1208-cd3f-cbfd-ea83c15ab199@gmail.com>
Subject: Re: [PATCH v3 6/6] man2/: add C digit separators to clarify long
 numeric digit strings
References: <cover.1676489380.git.Brian.Inglis@Shaw.ca>
 <3a42e44f476f084dc0fb2fa83ad5708e37818d0f.1676489381.git.Brian.Inglis@Shaw.ca>
In-Reply-To: <3a42e44f476f084dc0fb2fa83ad5708e37818d0f.1676489381.git.Brian.Inglis@Shaw.ca>

--------------aMOeuu2YKum85kv6ywRD5090
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Brian,

On 2/15/23 21:17, Brian Inglis wrote:
> ---
>  man2/capget.2           |  6 +++---
>  man2/ioctl.2            |  4 ++--
>  man2/msgctl.2           | 14 +++++++-------
>  man2/openat2.2          |  4 ++--
>  man2/process_vm_readv.2 |  2 +-
>  man2/reboot.2           |  2 +-
>  man2/semctl.2           | 16 ++++++++--------
>  man2/shmctl.2           | 14 +++++++-------
>  man2/umask.2            |  8 ++++----
>  man2/utimensat.2        |  2 +-
>  10 files changed, 36 insertions(+), 36 deletions(-)
>=20
> diff --git a/man2/capget.2 b/man2/capget.2
> index 909f8bfe0de0..7c0e5b414d5d 100644
> --- a/man2/capget.2
> +++ b/man2/capget.2
> @@ -56,17 +56,17 @@ The structures are defined as follows.
>  .PP
>  .in +4n
>  .EX
> -#define _LINUX_CAPABILITY_VERSION_1  0x19980330
> +#define _LINUX_CAPABILITY_VERSION_1  0x1998\[aq]03\[aq]30
>  #define _LINUX_CAPABILITY_U32S_1     1
> =20
>          /* V2 added in Linux 2.6.25; deprecated */
> -#define _LINUX_CAPABILITY_VERSION_2  0x20071026
> +#define _LINUX_CAPABILITY_VERSION_2  0x2007\[aq]10\[aq]26
>  .\" commit e338d263a76af78fe8f38a72131188b58fceb591
>  .\" Added 64 bit capability support
>  #define _LINUX_CAPABILITY_U32S_2     2
> =20
>          /* V3 added in Linux 2.6.26 */
> -#define _LINUX_CAPABILITY_VERSION_3  0x20080522
> +#define _LINUX_CAPABILITY_VERSION_3  0x2008\[aq]05\[aq]22
>  .\" commit ca05a99a54db1db5bca72eccb5866d2a86f8517f
>  #define _LINUX_CAPABILITY_U32S_3     2
> =20
> diff --git a/man2/ioctl.2 b/man2/ioctl.2
> index f33f2c57c103..36e1ff4e041f 100644
> --- a/man2/ioctl.2
> +++ b/man2/ioctl.2
> @@ -134,9 +134,9 @@ one or more ASCII letters were used.
>  For example,
>  .B TCGETS
>  has value
> -0x00005401, with 0x54 =3D \[aq]T\[aq] indicating the terminal driver, =
and
> +0x00\[aq]00\[aq]54\[aq]01, with 0x54 =3D \[aq]T\[aq] indicating the te=
rminal driver, and
>  .B CYGETTIMEOUT
> -has value 0x00435906, with 0x43 0x59 =3D \[aq]C\[aq] \[aq]Y\[aq]
> +has value 0x00\[aq]43\[aq]59\[aq]06, with 0x43 0x59 =3D \[aq]C\[aq] \[=
aq]Y\[aq]
>  indicating the cyclades driver.
>  .PP
>  Later (0.98p5) some more information was built into the number.
> diff --git a/man2/msgctl.2 b/man2/msgctl.2
> index ce534dc2abd5..f49b8a951d29 100644
> --- a/man2/msgctl.2
> +++ b/man2/msgctl.2
> @@ -131,15 +131,15 @@ structure define the access permissions for the m=
essage queue.
>  The permission bits are as follows:
>  .TS
>  l l.
> -0400	Read by user
> -0200	Write by user
> -0040	Read by group
> -0020	Write by group
> -0004	Read by others
> -0002	Write by others
> +0\[aq]400	Read by user
> +0\[aq]200	Write by user
> +0\[aq]040	Read by group
> +0\[aq]020	Write by group
> +0\[aq]004	Read by others
> +0\[aq]002	Write by others

Please break this into several patches.  At least one for dates (which ar=
e special),
other for normal hex numbers, and another for octals.

I expect this patch set to be around 15 patches, and that's fine.  It wil=
l be easier
to review.


Cheers,

Alex

>  .TE
>  .PP
> -Bits 0100, 0010, and 0001 (the execute bits) are unused by the system.=

> +Bits 0\[aq]100, 0\[aq]010, and 0\[aq]001 (the execute bits) are unused=
 by the system.
>  .PP
>  Valid values for
>  .I cmd
> diff --git a/man2/openat2.2 b/man2/openat2.2
> index 3ffd06ae7298..8b6cd5781b11 100644
> --- a/man2/openat2.2
> +++ b/man2/openat2.2
> @@ -140,7 +140,7 @@ argument of
>  Whereas
>  .BR openat (2)
>  ignores bits other than those in the range
> -.I 07777
> +.I 07\[aq]777
>  in its
>  .I mode
>  argument,
> @@ -148,7 +148,7 @@ argument,
>  returns an error if
>  .I how.mode
>  contains bits other than
> -.IR 07777 .
> +.IR 07\[aq]777 .
>  Similarly, an error is returned if
>  .BR openat2 ()
>  is called with a nonzero
> diff --git a/man2/process_vm_readv.2 b/man2/process_vm_readv.2
> index 712a19dd2212..d6b865878162 100644
> --- a/man2/process_vm_readv.2
> +++ b/man2/process_vm_readv.2
> @@ -271,7 +271,7 @@ when using, for example, shared memory or pipes).
>  .SH EXAMPLES
>  The following code sample demonstrates the use of
>  .BR process_vm_readv ().
> -It reads 20 bytes at the address 0x10000 from the process with PID 10
> +It reads 20 bytes at the address 0x1\[aq]0000 from the process with PI=
D 10
>  and writes the first 10 bytes into
>  .I buf1
>  and the second 10 bytes into
> diff --git a/man2/reboot.2 b/man2/reboot.2
> index 6fed0a076c77..d032ef70aafa 100644
> --- a/man2/reboot.2
> +++ b/man2/reboot.2
> @@ -123,7 +123,7 @@ If not preceded by a
>  data will be lost.
>  .TP
>  .B LINUX_REBOOT_CMD_RESTART2
> -(0xa1b2c3d4; since Linux 2.1.30).
> +(0xa1b2\[aq]c3d4; since Linux 2.1.30).
>  The message "Restarting system with command \[aq]%s\[aq]" is printed,
>  and a restart (using the command string given in
>  .IR arg )
> diff --git a/man2/semctl.2 b/man2/semctl.2
> index 619062858212..7d6115aa006f 100644
> --- a/man2/semctl.2
> +++ b/man2/semctl.2
> @@ -137,16 +137,16 @@ structure define the access permissions for the s=
hared memory segment.
>  The permission bits are as follows:
>  .TS
>  l l.
> -0400	Read by user
> -0200	Write by user
> -0040	Read by group
> -0020	Write by group
> -0004	Read by others
> -0002	Write by others
> +0\[aq]400	Read by user
> +0\[aq]200	Write by user
> +0\[aq]040	Read by group
> +0\[aq]020	Write by group
> +0\[aq]004	Read by others
> +0\[aq]002	Write by others
>  .TE
>  .PP
>  In effect, "write" means "alter" for a semaphore set.
> -Bits 0100, 0010, and 0001 (the execute bits) are unused by the system.=

> +Bits 0\[aq]100, 0\[aq]010, and 0\[aq]001 (the execute bits) are unused=
 by the system.
>  .PP
>  Valid values for
>  .I cmd
> @@ -561,7 +561,7 @@ call:
>  .B SEMVMX
>  Maximum value for
>  .BR semval :
> -implementation dependent (32767).
> +implementation dependent (32Ki-1).
>  .PP
>  For greater portability, it is best to always call
>  .BR semctl ()
> diff --git a/man2/shmctl.2 b/man2/shmctl.2
> index bc456849d3bd..88d91767dc59 100644
> --- a/man2/shmctl.2
> +++ b/man2/shmctl.2
> @@ -136,15 +136,15 @@ structure define the access permissions for the s=
hared memory segment.
>  The permission bits are as follows:
>  .TS
>  l l.
> -0400	Read by user
> -0200	Write by user
> -0040	Read by group
> -0020	Write by group
> -0004	Read by others
> -0002	Write by others
> +0\[aq]400	Read by user
> +0\[aq]200	Write by user
> +0\[aq]040	Read by group
> +0\[aq]020	Write by group
> +0\[aq]004	Read by others
> +0\[aq]002	Write by others
>  .TE
>  .PP
> -Bits 0100, 0010, and 0001 (the execute bits) are unused by the system.=

> +Bits 0\[aq]100, 0\[aq]010, and 0\[aq]001 (the execute bits) are unused=
 by the system.
>  (It is not necessary to have execute permission on a segment
>  in order to perform a
>  .BR shmat (2)
> diff --git a/man2/umask.2 b/man2/umask.2
> index 541d81c665ff..7100f6cb8535 100644
> --- a/man2/umask.2
> +++ b/man2/umask.2
> @@ -27,7 +27,7 @@ Standard C library
>  .BR umask ()
>  sets the calling process's file mode creation mask (umask) to
>  .I mask
> -& 0777 (i.e., only the file permission bits of
> +& 0777 (i.e., only the file permission bits of 0\[aq]777 (i.e., only t=
he file permission bits of
>  .I mask
>  are used), and returns the previous value of the mask.
>  .PP
> @@ -63,7 +63,7 @@ u::rwx,g::r-x,o::r-x
>  .PP
>  Combining the effect of this default ACL with a
>  .I mode
> -argument of 0666 (rw-rw-rw-), the resulting file permissions would be =
0644
> +argument of 0\[aq]666 (rw-rw-rw-), the resulting file permissions woul=
d be 0\[aq]644
>  (rw-r--r--).
>  .PP
>  The constants that should be used to specify
> @@ -86,7 +86,7 @@ is specified as:
>  .EE
>  .in
>  .PP
> -(octal 0666) when creating a new file, the permissions on the
> +(octal 0\[aq]666) when creating a new file, the permissions on the
>  resulting file will be:
>  .PP
>  .in +4n
> @@ -95,7 +95,7 @@ resulting file will be:
>  .EE
>  .in
>  .PP
> -(because 0666 & \[ti]022 =3D 0644; i.e. rw\-r\-\-r\-\-).
> +(because 0\[aq]666 (because 0666 & \[ti]022 =3D 0644; i.e. rw\-r\-\-r\=
-\-). \[ti]022 =3D 0\[aq]644; i.e. rw\-r\-\-r\-\-).
>  .SH RETURN VALUE
>  This system call always succeeds and the previous value of the mask
>  is returned.
> diff --git a/man2/utimensat.2 b/man2/utimensat.2
> index c2e6a9164917..90ef97f3c070 100644
> --- a/man2/utimensat.2
> +++ b/man2/utimensat.2
> @@ -272,7 +272,7 @@ Invalid value in
>  .B EINVAL
>  Invalid value in one of the
>  .I tv_nsec
> -fields (value outside range [0, 999,999,999], and not
> +fields (value outside range [0, 999\[aq]999\[aq]999], and not
>  .B UTIME_NOW
>  or
>  .BR UTIME_OMIT );

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------aMOeuu2YKum85kv6ywRD5090--

--------------zuBIJnAhG6FYY9lTMLv916TX
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPtSx4ACgkQnowa+77/
2zLFGw/7BcGEow2KlRFsDTHmMwy1jWd+48Ng4aCAbZuGkr9mX2vnqinbY/nKlKx6
2H9pMJoJWXE4JGVC5hYk7x/6SAyK4yapA4KsXx+xl8p7TFu7kX+ug3qFzNCCRGev
hPfa6fbYeUnwUeg2u50KTmn1HmZrXNgdWLVvhT3RAt0ghkfHVyNWMcz1q4u66c4u
R6f4S27ZrRBpeITIoWK/E0nKd7/8VeLE0T8x6temcrjJ4sTiOjDWN3LboZPIJ/JF
gWJgDPqygzJ1yRsbznwAse15nLcD5dyvYbyLcsZ4oICiLZyr7Nf6mkGXJi9fMYQk
JLTXrQan2DbwLyZnieyFW6vIVjhY69KOZ1YRcs/0vMaK2vUhu9nVBt3SYmpRD05+
tM40/6eiJoXHC9aBaWvbU2yPc4Pj/ju5x1RIKNfYo8I6ZEZ7WN7gWcJETIgCKt3/
1rvPIH1JY/ruNzOZf3R12suytC6wMSdV6ugktP8zNrCDRGn3A/akHSde2sy3eBBc
Lgme6doeTmLCq0+CI0z8vDETijc+BDvYYZMv0EEDrR+M7kxEejMMAW995KhEjUvk
DS58xTe3h0mXbxffqcV+FkUmebsRKcnVE8NOl6f7vYfrT53zkWlDxfsUuuopXGK7
48lBvRjEr9BavViWE3abXN4AXroMikl7xj4eq9zXPLlqwYpHNFw=
=Odu4
-----END PGP SIGNATURE-----

--------------zuBIJnAhG6FYY9lTMLv916TX--
