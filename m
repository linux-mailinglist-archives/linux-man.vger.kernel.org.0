Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9691377A31C
	for <lists+linux-man@lfdr.de>; Sat, 12 Aug 2023 23:46:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229646AbjHLVqO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Aug 2023 17:46:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47768 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229499AbjHLVqO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Aug 2023 17:46:14 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B33F01733
        for <linux-man@vger.kernel.org>; Sat, 12 Aug 2023 14:46:16 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 49D516198D
        for <linux-man@vger.kernel.org>; Sat, 12 Aug 2023 21:46:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9043DC433C8;
        Sat, 12 Aug 2023 21:46:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691876775;
        bh=JYSIBYY+p5Dv4pO5+MapLcDHVRX66tVHi8x+mcwEhYI=;
        h=Date:To:Cc:From:Subject:From;
        b=F/xogK/etcp3HIZkyd9tkoINZYvlMMNZS5TX4t1p1is2teKSz49/ZSXscUnQ3U7qe
         oe6ogpyUlriegTqVhz8aEAR2TwxI/7AtCQuIrPOeSQPWnfL1rZNsOSDimwHTFYeNcy
         PU24XFGmRQTh7eymjINJ6dmkNPqciZhdy+54pxrST5kvlm4WTKTfA0J6UrwQNpxuCN
         TzFRXznuSZjs1uG5BG9fRn5m3mtY9XBifSEznqfLjsqU8o84d7EFZHWF+9vKTpTXAC
         jdiMTvcivDZCjUv+yz0kqVUz3Wb8hvSwYib/ooIajKesB9M0l/eQEvnBBIZ8mmzD5F
         dpbPlFMCUA6fQ==
Message-ID: <3acefa68-2055-1978-da55-cc4f66cdd255@kernel.org>
Date:   Sat, 12 Aug 2023 23:46:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Content-Language: en-US
To:     Deri <deri@chuzzlewit.myzen.co.uk>,
        linux-man <linux-man@vger.kernel.org>
Cc:     Brian Inglis <Brian.Inglis@Shaw.ca>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        groff <groff@gnu.org>
From:   Alejandro Colomar <alx@kernel.org>
Subject: PDF book improvements
Organization: Linux
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------KhPAOsSo05jfFgOfmCVKcgut"
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------KhPAOsSo05jfFgOfmCVKcgut
Content-Type: multipart/mixed; boundary="------------Rjf2aRlwHt508kwT7AW5h5Fh";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>, linux-man <linux-man@vger.kernel.org>
Cc: Brian Inglis <Brian.Inglis@Shaw.ca>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>, groff <groff@gnu.org>
Message-ID: <3acefa68-2055-1978-da55-cc4f66cdd255@kernel.org>
Subject: PDF book improvements

--------------Rjf2aRlwHt508kwT7AW5h5Fh
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Deri,

My end goal is to be able to embed the creation of the PDF book in the
Makefiles.  To that end, as a first step, I'd like to reuse part of
what we already have in the Makefile.  Currently, we process all files
with -Tpdf, which I guess we'll be able to reuse.

     $ make build-pdf -kij >/dev/null 2>&1
     $ touch man2/gettimeofday.2=20
     $ make build-pdf V=3D1 | sed '/^[[:upper:]]/s/^/\n/'

     PRECONV	.tmp/man/man2/gettimeofday.2.tbl
     preconv   man2/gettimeofday.2 >.tmp/man/man2/gettimeofday.2.tbl

     TBL	.tmp/man/man2/gettimeofday.2.eqn
     tbl <.tmp/man/man2/gettimeofday.2.tbl >.tmp/man/man2/gettimeofday.2.=
eqn

     EQN	.tmp/man/man2/gettimeofday.2.pdf.troff
     ! (eqn -Tpdf   <.tmp/man/man2/gettimeofday.2.eqn 2>&1 >.tmp/man/man2=
/gettimeofday.2.pdf.troff) \
     | grep ^ >&2

     TROFF	.tmp/man/man2/gettimeofday.2.pdf.set
     ! (troff -Tpdf -wbreak  -man  <.tmp/man/man2/gettimeofday.2.pdf.trof=
f 2>&1 >.tmp/man/man2/gettimeofday.2.pdf.set) \
     | grep ^ >&2

     GROPDF	.tmp/man/man2/gettimeofday.2.pdf
     gropdf   <.tmp/man/man2/gettimeofday.2.pdf.set >.tmp/man/man2/gettim=
eofday.2.pdf

What part of this "pipeline" can we reuse?  I guess we can reuse the
=2Epdf.troff files.  The .pdf.set files probably cannot be reused for
the single book, as they'll have the page numbers and so on already
set, right?

So, I'm imagining that we could cat(1) your front cover with all
these files, and then process with troff(1) and gropdf(1).  Does
that make sense?

Could we also reuse the .pdf.set files and only run gropdf(1) on
the catenation of them?

Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------Rjf2aRlwHt508kwT7AW5h5Fh--

--------------KhPAOsSo05jfFgOfmCVKcgut
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTX/Z0ACgkQnowa+77/
2zIsmxAAjPAVetvbVOqpKBDfHwR5WP56DtOtEgFgAJTBCHNqgeUxsimW/KuQBXL/
Ku1GzoUbo85RFBYE8vjCOUmQ1OxdK0iwCoJFDbyeGljfpxQ80lhKGRpuSRWVUMop
VgqjLi4mNtm6zCHsmNfOaX4eoBPtH+KPvcIzkRb9fYzIZM388bcenECramTDVTon
awyt/9j2LlQRhYPLAspYkd0PuMs4spqsP1TF+sfV1LThi9sVNXiOvvRZiH892rxh
qafLL/GaLUb9dDFTnp9fbsgaLXEdx3lUyzQ71MH+AjvqG/It8esrNm5RF4Gecrmd
DDhaDwJNU2lV1G483Oel+dawpwd9fe11mRYuFkVDfPNuyjOKQZksT4tnfvixtEfV
mTEJpGBSfLnj5DRNpGmwx41zDYa2WOrlphw2osOyATBxDRfy2OsMAa0vEONFUt/J
3K2W++WSjtpY58wD3CCEzZb7vlG4IPMIdrqEaZduNwbP3oyU8tjzFFpfnKGnwwxg
KQi3F9FPUUYbzP8uJY1+6R1ocYOsZ/1PaF5cGrWELMuZdGL90uaHcdUOGUKsDOrH
JNZFoVmutuQcsoaFiaSVWaOGdFagkqtwOTNGZnRXglrwUdAXG0V4ZouPgcTBeTjl
+zWGpIxhZHG1jcM84uAbj/yHRODOu+JVThqFMfh30e74jwsO1zM=
=Kduw
-----END PGP SIGNATURE-----

--------------KhPAOsSo05jfFgOfmCVKcgut--
