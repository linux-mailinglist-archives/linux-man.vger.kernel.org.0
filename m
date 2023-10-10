Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 44D497BFECA
	for <lists+linux-man@lfdr.de>; Tue, 10 Oct 2023 16:09:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232646AbjJJOJM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 10 Oct 2023 10:09:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54198 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232706AbjJJOJL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 10 Oct 2023 10:09:11 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC0BB91
        for <linux-man@vger.kernel.org>; Tue, 10 Oct 2023 07:09:08 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EA8C9C433C9;
        Tue, 10 Oct 2023 14:09:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1696946948;
        bh=Fb5x8dCzK3p+vaF3mJ50b8chI5BSHMuNEl02P27Ppsk=;
        h=Date:From:To:Cc:Subject:From;
        b=ss4PU4xNVbgOVFbYD5H/RvVTzjJ1+kiukQcgwT0TVsGP8ocAD8AVQxhnJJFye6CJP
         iMwCJw8D4iDu3NXvHrNBsErifpmse32gFahb5YYrZCMvFZrSkppELdpHraoJDtLqPl
         Uwn4QRhgo1F0hMNssCzziJqQlY5hFvE2tuH+1HwgptQUZ5ftqGSl6PUKSS6MGDNgz0
         z0LrVASjhH/ofrFWSbWp2rxFS2oQ4Hbuz7kXzRNZZs1CZFa0zhVSdrEvrML58n6DUN
         bYx1EttXHKzKQ3JRFuoXDdMq0Cq8Gi2j8v2EzUbCqDScyNAC97RzdiiSYvqDEKpwrC
         pZxXlElUnC12g==
Date:   Tue, 10 Oct 2023 16:09:05 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     serge@hallyn.com
Cc:     linux-man@vger.kernel.org
Subject: string_copying.7: Clarifying ustr and zustr
Message-ID: <ZSVbASi04xwzNFyr@debian>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="aU3MZOU73kYt4gcJ"
Content-Disposition: inline
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--aU3MZOU73kYt4gcJ
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 10 Oct 2023 16:09:05 +0200
From: Alejandro Colomar <alx@kernel.org>
To: serge@hallyn.com
Cc: linux-man@vger.kernel.org
Subject: string_copying.7: Clarifying ustr and zustr

Hi Serge,

I'm clarifying zustr after your suggestion.  Please check this text.

DESCRIPTION
   Terms (and abbreviations)
       string (str)
              is  a  sequence of zero or more non=E2=80=90null characters f=
ol=E2=80=90
              lowed by a null byte.

       character sequence
              is a sequence of zero or more  non=E2=80=90null  characters. =
  A
              program  should  never  use a character sequence where a
              string is required.  However, with appropriate  care,  a
              string can be used in the place of a character sequence.

              null=E2=80=90padded character sequence (zustr)
                     Character  sequences  can  be contained in fixed=E2=80=
=90
                     width buffers, which contain padding  null  bytes
                     after the character sequence, to fill the rest of
                     the  buffer  without  affecting the character se=E2=80=
=90
                     quence; however, those padding null bytes are not
                     part of the character sequence.  zustr stands for
                     Zero=E2=80=90padded Unterminated STRing.   Don=E2=80=
=99t  confuse
                     zero=E2=80=90padded   with  null=E2=80=90terminated:  =
zero=E2=80=90padded
                     means 0 or more padding zeros (null  characters),
                     while null=E2=80=90terminated means exactly 1 terminat=
ing
                     null character.

              measured character sequence (ustr)
                     Character  sequence  delimited by its length.  It
                     may be a slice of a larger character sequence, or
                     even of a string.  ustr stands  for  Unterminated
                     STRing.

The patch is:

diff --git a/man7/string_copying.7 b/man7/string_copying.7
index e03c2dda6..c5f374025 100644
--- a/man7/string_copying.7
+++ b/man7/string_copying.7
@@ -102,12 +102,19 @@ .SS Terms (and abbreviations)
 to fill the rest of the buffer
 without affecting the character sequence;
 however, those padding null bytes are not part of the character sequence.
+.I zustr
+stands for Zero-padded Unterminated STRing.
+Don't confuse zero-padded with null-terminated:
+zero-padded means 0 or more padding zeros (null characters),
+while null-terminated means exactly 1 terminating null character.
 .\" ----- DESCRIPTION :: Terms (and abbreviations) :: measured character s=
equence
 .TP
 .IR "measured character sequence " ( ustr )
 Character sequence delimited by its length.
 It may be a slice of a larger character sequence,
 or even of a string.
+.I ustr
+stands for Unterminated STRing.
 .RE
 .\" ----- DESCRIPTION :: Terms (and abbreviations) :: length (len) ----/
 .TP


Thanks,
Alex

--=20
<https://www.alejandro-colomar.es/>

--aU3MZOU73kYt4gcJ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUlWwEACgkQnowa+77/
2zIGQA/9EfoyDEVrQEkY8YOSlnmj2EdrSs/yvNGvc6PWa8FzR34LRHk/oFjxmPdc
EFoa0QlwoGuL8E5iEsCVfXiRFeEcOWcsxWVp8kmnbvrk1d2z/borarjC9cPPBaMR
M5S045kiIZDyyDxpeyH9H9VB0Qs1RpNKzNVdGRWzFaDOc/iDKNrdLc3C6aPKPjtJ
9FR5LmiIdaV07ZEn+ntcUuY30QNOd0I180LsxxBCKTfKhmzru/mGCXSkADmUrb9k
p3Fo5YUIY0dRcewTMpEXtEc8pnAvKVBgOHZabeg0g0Qrrcd6zMFD/UUJ/CjhEhtg
1FXElJZave13aXUXWAq1VCDLnl4SdADKXw4Vd+oazMAOAPOq+3R4NBueH9okLVbd
2L4QpbJMp5HfDgkSofRRYsQCOWmTWLryJymHoQMrorMcK1tl3k08BgSv8zxcbKU6
vMmuZwTVvAKHr+JVXj0IOe3rtHhL9OnBZtOMSDvmZOhBS54n73EoT2BtDBD/Hnsb
hzocPFAx1z1+DAqujorjhz/HMQKADpJpQWBHy3F31zvIJawiWn6PCVfO+r1KrBnb
RL7HJJu8cWhoM5fsWm6T6PeCFYFTTQbJsCMC/ctDIgcFH3h6CNDQPdkwVxC0KzWt
xTl3YmvSR4Vu5o3YVLUVHc3cMlvdrHYTdTBhnu8jjaePQPr6Oe4=
=vEsi
-----END PGP SIGNATURE-----

--aU3MZOU73kYt4gcJ--
