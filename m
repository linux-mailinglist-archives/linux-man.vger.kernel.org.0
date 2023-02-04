Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E350E68ACD7
	for <lists+linux-man@lfdr.de>; Sat,  4 Feb 2023 23:20:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231814AbjBDWUk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 4 Feb 2023 17:20:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49210 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230403AbjBDWUf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 4 Feb 2023 17:20:35 -0500
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com [IPv6:2607:f8b0:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 03BFC23867
        for <linux-man@vger.kernel.org>; Sat,  4 Feb 2023 14:20:35 -0800 (PST)
Received: by mail-ot1-x329.google.com with SMTP id v24-20020a05683011d800b0068bdd29b160so2330338otq.13
        for <linux-man@vger.kernel.org>; Sat, 04 Feb 2023 14:20:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Mnt6xerLr5crQRuvRp5nWmkvQUJhn0qgQxOlP3vLM5A=;
        b=qNRVtBWRodkKjbQsNFcJYjjpwDqaRLS5Z5Pb8mCry2xExaB3PD13RNOebWYTQ6/txl
         J2gS6FpA88mPHao03wGmnvRUhs/R5LGZbPraCEVEWnReyiDhmya7yu+1ZFKuED3J0hRE
         owaV8PB2d4OxB87mF1FLwDU1C/uDPJkdKfAS76OXFdqva82ZK2MAcHR8RTZ+tTLQmePv
         rL/nDHgoDGmbelGWghcsia20X7W9hDWhJrNucIzUMfopcg54eavcK7eDSAZkzCLyqrxG
         Hsw8mxZwLXleWSFyCapYepqhiLuKNvbTUn8+sSBlIwhicQ0XXU/cJ9tDR5EeAdbuBM4x
         L1Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Mnt6xerLr5crQRuvRp5nWmkvQUJhn0qgQxOlP3vLM5A=;
        b=TRIVkKnKQlRCGboRBoR+1OwmqDhF7NEXlEyM/CSrKDNZIYzJBLJ7XqwsGORmvGXEat
         2tC9WEF8PLMKhnuOwKSWyT1d6XqE4QoxTqpbx9wh2xmJyJJl3BasZYXD1LqWtjfRNpR0
         AxGm/VBLixJeqLypBhjCc74g084XNeYd93qeptcaJxpCQims3Q6rZmcac6y26RfLY6Wv
         GuQQunG5fhMPzGONb2+mBEXnm6SN7JiK3mjkFd1i7Hzg1ize7He57n4F9W+z2cPPJ2UU
         qDfu6/7TeY1im2y+D4KPHupodHaCJp2WmkJfrmNLYzkBgL650SvARL0CLGXtV9kN2ukT
         vgaQ==
X-Gm-Message-State: AO0yUKX/POxushH6H+8BMoulVnxQEAV6y0UBcZHBZOubXczEBxGFQLgR
        HA0YY7AfYm6EQVFEQf2qbPUkSN0qkWU=
X-Google-Smtp-Source: AK7set+kr1G1osmkvKnWEWsD0usrGqy7DvC1jsbBKVbTQnR592Vcq+iQIEekG16xOAgdziPwkPD3AA==
X-Received: by 2002:a05:6830:26ca:b0:68b:d616:7862 with SMTP id m10-20020a05683026ca00b0068bd6167862mr6185515otu.2.1675549234340;
        Sat, 04 Feb 2023 14:20:34 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id bl8-20020a056830370800b0068d4a8a8d40sm2746933otb.81.2023.02.04.14.20.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Feb 2023 14:20:33 -0800 (PST)
Date:   Sat, 4 Feb 2023 16:20:31 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     platform-testers@gnu.org
Cc:     groff@gnu.org, linux-man@vger.kernel.org
Subject: verification instructions for groff 1.23.0.rc2
Message-ID: <20230204222031.yp5sxjbtovcrdzi6@illithid>
References: <20230204184818.ich3vavrjsdg7hxd@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="6spfmxh7oddj4yqh"
Content-Disposition: inline
In-Reply-To: <20230204184818.ich3vavrjsdg7hxd@illithid>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--6spfmxh7oddj4yqh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Due to some infrastructure problems, I couldn't offer GPG verification
details for the distribution archive in my earlier announcement.

Please find them below.

At 2023-02-04T12:48:20-0600, G. Branden Robinson wrote:
> groff 1.23 release candidate 2, 1.23.0.rc2, is now available from GNU's
> alpha FTP site.  You may download the distribution archive from there.
>=20
>   https://alpha.gnu.org/gnu/groff/
[...]

Obtaining groff
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

This release candidate is available from alpha.gnu.org.

Here are the compressed sources and a GPG detached signature[*].

  http://alpha.gnu.org/gnu/groff/groff-1.23.0.rc2.tar.gz
  http://alpha.gnu.org/gnu/groff/groff-1.23.0.rc2.tar.gz.sig

Here are the SHA-1 and SHA-256 checksums.

4491287b7e17f5d886fafb5613deab0d978c47e3  groff-1.23.0.rc2.tar.gz
+bCEV52n4Z26KdgIVwsyS9tIWeJ7bP+c++YsDh/mOFU=3D  groff-1.23.0.rc2.tar.gz

The SHA-256 checksum is encoded in Base64 instead of the hexadecimal
form that most checksum tools default to.  The mechanism follows.

sha256sum < groff-1.23.0.rc2.tar.gz | cut -f1 -d\  | xxd -r -p | base64

Thanks to Bertrand Garrigues for his assistance in preparing this RC.

[*] Use a .sig file to verify that the corresponding file (without the
    .sig suffix) is intact.  First, be sure to download both the .sig
    file and the corresponding archive.  Then, verify the archive.

      gpg --verify groff-1.23.0.rc2.tar.gz{.sig,}

    If that command fails because you don't have the required public
    key, you can import it.

      gpg --keyserver pgp.mit.edu --recv-keys \
        2D0C08D2B0AD0D3D8626670272D23FBAC99D4E75

    Re-run the 'gpg --verify' command subsequently.

Regards,
Branden

--6spfmxh7oddj4yqh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmPe2icACgkQ0Z6cfXEm
bc5GxxAAnuJsNYt9JXZ8fMjZZQ1pI/x9cCg/mq0XnqQSHFEvcbJlyQk6WUX/Brn4
b/Pcuu9RxTurSPfNaimlcJF0KdAvBaO+VYePoRntWOlQ8ZRJtskYPGsqb0kDRX1F
UUloTGcfWGb0Wvpit2GxXxkvAWS9IXzkRISzD1eZXkjgAXPI8vRmHJsyIdCtjs9C
Vl3UGFcZtnl+Q8Xsr6Rj3SHZni4afW5BYiKe0da47XtMImc7YaZCbjs0P8gewyGQ
TFsr7VHw6LLjF3HhM0MWBYK/2nXT3GYathGN+WE98FUFBlz0ZaCyRomgvsO+gMLJ
ZMWyLCoQQAR+wTJWL1T3fjW8MDyn0NfDhEvtysi3B8A3LUtPAlvcIIoGmJpqkbeS
mqg0u0wxEj6BVvglQswTbUsNlnen/ZkYK2Ib396Ka10CG2zk0j8w9Tb4vlaMlwOj
iY6Zwnba8LJOQxrVPYY6zstbBv9LwNz3lVrL8rF15z2uFtAZ9Cg61qfrvVCKTJkU
kXUp3dPyk558NDdmnaTdKXw2jNYYlPH2Oiex0zGTd/jVor+6zloeunfk4mzB9FQq
kfUK+c9l1c7lojTnrDGDbAZURt3SRR5yZYbVQCq26oc+JykYsRiXyZRGvQ9eFW9D
qDyGQP6jVrmI2fOSytuevdR9IMNg6iUi9RnNXziumu8usfMvyd4=
=sa6j
-----END PGP SIGNATURE-----

--6spfmxh7oddj4yqh--
