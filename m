Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 32DFC691006
	for <lists+linux-man@lfdr.de>; Thu,  9 Feb 2023 19:11:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229572AbjBISLK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Feb 2023 13:11:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57032 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229850AbjBISLI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Feb 2023 13:11:08 -0500
Received: from mail-oa1-x35.google.com (mail-oa1-x35.google.com [IPv6:2001:4860:4864:20::35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AFA5C68AC3
        for <linux-man@vger.kernel.org>; Thu,  9 Feb 2023 10:10:54 -0800 (PST)
Received: by mail-oa1-x35.google.com with SMTP id 586e51a60fabf-1636eae256cso3716147fac.0
        for <linux-man@vger.kernel.org>; Thu, 09 Feb 2023 10:10:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UqODbv3vlS48/qotl3uZeLEf2ud+NX/rj14mwt1QafU=;
        b=M4jrZsIBTKA5AZ8hqSdmmvPUL+4EF79KC3ptE0GbFCi0xoeDiLKYFHPzZDTk/6hOAA
         tXfHYh/YLnuu4/4MC760ywAQZVAQbJL2TVoGueg9aHXb9JIHUGOxRDWarlLvVWXLg9aS
         vxtcF3pfUEfGDazF6M18wBCqKm2aA+m0iMNgn4yYY52Up3r0PgjqlNRNv4IPdd1OtPJn
         hhENSJYT9Wk9VZ3TfnIf2OmzIGcmmc7rYGAhek4XvDvuwgBMPiKclqUhZ2K3WxCCmA5+
         YkCeio87ygLxtzxIhaI3+DZSDJrftgVaJN6Fwv2EJwYxgZtllzzd8VeLwOQ7wvKTL3HT
         MypQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UqODbv3vlS48/qotl3uZeLEf2ud+NX/rj14mwt1QafU=;
        b=iqCztNaNDoW3rCltgQAz7FjC+cUOb3W6AKkbv1b0bqo1mlcGyUNQ/TSwP5i2FCSmeL
         Ufh0Lh3oueHwzy4tn8Y54JnUARxAEF0uGJlhDT6D28jKpoCVCjEniWtAogAS59BL6bH9
         ffPIgJ7bpo8XLvYFz856w6DMbmQUCzmknW0tRamWxbC/bOx3MbEsIqKTnI+aZ9DqXi+W
         2+ZcumayyXeexI6gxS89SNVkV05MmCnKmUm/UflSQIB2elwfE7QDfwn++3NQmFLLXFzI
         8KM65LurcvYVgBPQ/uonyhUJsSwIBiU/uK1kVUIGj8XsomzFyTMW8h72YOiIr6rgyW+F
         vA3g==
X-Gm-Message-State: AO0yUKWKzJneuDwCPpWwAAChABqludjiUrBOPwnwZ4SMWsiVRL/6exqi
        R3SuVXh8WiyekaX+lLf+pOlkmGGOC0U=
X-Google-Smtp-Source: AK7set/jOqdPghmSzIa051fCp9AkjGLbhhj/dqhsdfIp9UfYilsUPTnUy/PCD3qQ0sbyNj8DMyMC+Q==
X-Received: by 2002:a05:6870:50b:b0:15b:96af:50ac with SMTP id j11-20020a056870050b00b0015b96af50acmr6759894oao.29.1675966254091;
        Thu, 09 Feb 2023 10:10:54 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id v17-20020a4a9751000000b005178a98b6d2sm999293ooi.30.2023.02.09.10.10.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Feb 2023 10:10:53 -0800 (PST)
Date:   Thu, 9 Feb 2023 12:10:52 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 13/20] localedef.1: ffix
Message-ID: <20230209181052.shmqkk43br5teu6m@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="hgo2q5gdhzln4lef"
Content-Disposition: inline
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--hgo2q5gdhzln4lef
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Rewrite synopses to use groff man(7) `SY`/`YS` extension macros.

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man1/localedef.1 | 33 ++++++++++++++++++++-------------
 1 file changed, 20 insertions(+), 13 deletions(-)

diff --git a/man1/localedef.1 b/man1/localedef.1
index 93217bfae..fad411a08 100644
--- a/man1/localedef.1
+++ b/man1/localedef.1
@@ -16,26 +16,33 @@
 .SH NAME
 localedef \- compile locale definition files
 .SH SYNOPSIS
-.B localedef
+.SY localedef
 .RI [ options ]
 .I outputpath
-.br
-.B "localedef \-\-add\-to\-archive"
+.YS
+.SY localedef
+.B \-\-add\-to\-archive
 .RI [ options ]
 .I compiledpath
-.br
-.B "localedef \-\-delete\-from\-archive"
+.YS
+.SY localedef
+.B \-\-delete\-from\-archive
 .RI [ options ]
 .IR localename " ..."
-.br
-.B "localedef \-\-list\-archive"
+.YS
+.SY localedef
+.B \-\-list\-archive
 .RI [ options ]
-.br
-.B "localedef \-\-help"
-.br
-.B "localedef \-\-usage"
-.br
-.B "localedef \-\-version"
+.YS
+.SY localedef
+.B \-\-help
+.YS
+.SY localedef
+.B \-\-usage
+.YS
+.SY localedef
+.B \-\-version
+.YS
 .SH DESCRIPTION
 The
 .B localedef
--=20
2.30.2


--hgo2q5gdhzln4lef
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmPlNywACgkQ0Z6cfXEm
bc4fnhAAqAR/nH8AD++Tcs5W3cJvTrh9uRwFkONiz3ctoDbEIaIOBSl0XsL/4sk8
JC+v3u9PpCZJ5cRlHmUsiD2IZ0ncPGZursgUAxvue2S/xQco5IfMr/mgCBHoe5e5
JB3WmGiOFFdY8l1kpYpqyZ1fyWDETOqGYMMXzIj7KEc3F7GqlZ1zhEYrRIL396Ac
9vAO1ROjrRKIngqvhNl7qx9/liEcqB7PqJDrihenAoHVnYYJ2rCk8AVDo5M9CCgO
MxDcJ35sZwM8ASuT05OM9MFmUn07ElclW53VDa9gQWKzy1VjNVDf33jWO1ja/fVO
4tYD4v75EzFX79V8Ngk7hnS4QclQgUcC3WiO3Y1tteI26Py/EW54tEGEDQvclwRx
DpQgkRczoTiCneMVqH1oduhfibInnVAtyEIYnAlDrpY+IctX694nQNpQODRknb5M
T/P4/d5tYCHN7GC+wVd6P0RKJrkDrTBCfleZS4ud7PGmEM+4x5VYBGczyTS9dnHb
iHcVBX1p6nGvFfe2ZgZupk2tTBkvqlI3VbuOVXDT7HMr2CEMyk2/gkNh3QfyYP7L
J+v1YeOHEGyNJvPw2EES/kH+Kgl63z8iHqlwnp41KdcAi1Z8jQYgtsmD4djVgtKh
6Qsu1sjlPoY6ZZcO+BFX5bHezvjfazX3OL0erGCXrQX30clhD/M=
=dJOj
-----END PGP SIGNATURE-----

--hgo2q5gdhzln4lef--
