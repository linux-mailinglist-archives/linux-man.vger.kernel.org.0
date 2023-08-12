Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F178E77A324
	for <lists+linux-man@lfdr.de>; Sat, 12 Aug 2023 23:53:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229786AbjHLVxe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Aug 2023 17:53:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53482 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229494AbjHLVxe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Aug 2023 17:53:34 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B4361706
        for <linux-man@vger.kernel.org>; Sat, 12 Aug 2023 14:53:37 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id AC9AD60C13
        for <linux-man@vger.kernel.org>; Sat, 12 Aug 2023 21:53:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05B61C433C7;
        Sat, 12 Aug 2023 21:53:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691877216;
        bh=o0d5whAIwdAsRFlz5dxrft5OQ5Si+oy79H5ad9zvEXM=;
        h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
        b=vOHpZ4QYq11H7qJe1U+2y+XaV0yubgR/D3DgmV0HoLiCNAUJFT2KnEHpBKX8wwiss
         gk9rMuGyZkRrCB979FXZMs/4DNltRbWticAyyQS92a1KzykI0EhCYK0gDSqQsCZhnl
         15NydK4E1q16h5lCNdRZi7KqluJD3sAA6a0sp1koNWxHr4GoylXBvTDSsLXt0VCCVO
         uogqV5zBtnzzNT9wmshEaG0JUI2NhL1BLqqSmJd+u9sLFE/icu/R/eLT9XMvRLFwxj
         7SDROZbz8l1csNG8SBCmckOrruZFTEUOHxgjhNDqQzIqajcmlAaji+6Uymht2B4BpW
         kjVp5lRRgqmqQ==
Message-ID: <138e84b6-dfbd-2640-f5ee-59793470c134@kernel.org>
Date:   Sat, 12 Aug 2023 23:53:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: PDF book improvements
Content-Language: en-US
From:   Alejandro Colomar <alx@kernel.org>
To:     Deri <deri@chuzzlewit.myzen.co.uk>,
        linux-man <linux-man@vger.kernel.org>
Cc:     Brian Inglis <Brian.Inglis@Shaw.ca>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        groff <groff@gnu.org>
References: <3acefa68-2055-1978-da55-cc4f66cdd255@kernel.org>
Organization: Linux
In-Reply-To: <3acefa68-2055-1978-da55-cc4f66cdd255@kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Yg56NnrbRU8ZFgQ8G5K3QKGt"
X-Spam-Status: No, score=-8.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------Yg56NnrbRU8ZFgQ8G5K3QKGt
Content-Type: multipart/mixed; boundary="------------AhO1A0agEpdaptRFxTWpRbGM";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>, linux-man <linux-man@vger.kernel.org>
Cc: Brian Inglis <Brian.Inglis@Shaw.ca>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>, groff <groff@gnu.org>
Message-ID: <138e84b6-dfbd-2640-f5ee-59793470c134@kernel.org>
Subject: Re: PDF book improvements
References: <3acefa68-2055-1978-da55-cc4f66cdd255@kernel.org>
In-Reply-To: <3acefa68-2055-1978-da55-cc4f66cdd255@kernel.org>

--------------AhO1A0agEpdaptRFxTWpRbGM
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2023-08-12 23:46, Alejandro Colomar wrote:
> Hi Deri,
>=20
> My end goal is to be able to embed the creation of the PDF book in the
> Makefiles.  To that end, as a first step, I'd like to reuse part of
> what we already have in the Makefile.  Currently, we process all files
> with -Tpdf, which I guess we'll be able to reuse.
>=20
>      $ make build-pdf -kij >/dev/null 2>&1
>      $ touch man2/gettimeofday.2=20
>      $ make build-pdf V=3D1 | sed '/^[[:upper:]]/s/^/\n/'
>=20
>      PRECONV	.tmp/man/man2/gettimeofday.2.tbl
>      preconv   man2/gettimeofday.2 >.tmp/man/man2/gettimeofday.2.tbl
>=20
>      TBL	.tmp/man/man2/gettimeofday.2.eqn
>      tbl <.tmp/man/man2/gettimeofday.2.tbl >.tmp/man/man2/gettimeofday.=
2.eqn
>=20
>      EQN	.tmp/man/man2/gettimeofday.2.pdf.troff
>      ! (eqn -Tpdf   <.tmp/man/man2/gettimeofday.2.eqn 2>&1 >.tmp/man/ma=
n2/gettimeofday.2.pdf.troff) \
>      | grep ^ >&2
>=20
>      TROFF	.tmp/man/man2/gettimeofday.2.pdf.set
>      ! (troff -Tpdf -wbreak  -man  <.tmp/man/man2/gettimeofday.2.pdf.tr=
off 2>&1 >.tmp/man/man2/gettimeofday.2.pdf.set) \
>      | grep ^ >&2
>=20
>      GROPDF	.tmp/man/man2/gettimeofday.2.pdf
>      gropdf   <.tmp/man/man2/gettimeofday.2.pdf.set >.tmp/man/man2/gett=
imeofday.2.pdf
>=20
> What part of this "pipeline" can we reuse?  I guess we can reuse the
> .pdf.troff files.  The .pdf.set files probably cannot be reused for
> the single book, as they'll have the page numbers and so on already
> set, right?
>=20
> So, I'm imagining that we could cat(1) your front cover with all
> these files, and then process with troff(1) and gropdf(1).  Does
> that make sense?
>=20
> Could we also reuse the .pdf.set files and only run gropdf(1) on
> the catenation of them?

Oh, and another thing.  I have a branch that uses the new MR macros.
It would be interesting to use them to do the hyperlinking.

If you want to check the branch, it's here:
<http://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/lo=
g/?h=3DMR>
However, I rebase that branch against master, to update it with any
new man-page references that are introduced by new patches, so please
don't rely on its stability (If you need something stable, we can
agree on something).

Cheers,
Alex

>=20
> Cheers,
> Alex
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------AhO1A0agEpdaptRFxTWpRbGM--

--------------Yg56NnrbRU8ZFgQ8G5K3QKGt
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTX/10ACgkQnowa+77/
2zLusQ/+La5AQDhKyTni2BckWlVHlNx2v9nwy8okRIKVvcir0Vyjnko4vzV0MMB8
qOAD8A9yNBfumDUCImb6/8j1niOZXK3hG+BGLA8g5eG4LcB8oI/uCmnoV3zork2m
buhT4OK9j+Ra6N97JyN7u+PbMji+iXusXiPmhQU1Xb3EOxdQkMp/lw1yIRIPBFx2
Wx+7ob80BOkJs483EzhzfsJM1cvr+4d0MJ5hufNHEHmKkat9BSYuhxjwBg/VZHX9
dJbx6WnSXlrXuGj7hHRUekSazEO/PNPShcqlNWzZdfkrB/QmCsj9ERxiaQC/Wh51
pTiS9ZOysjdXlU+tn7rtR7KNCEtkoCVRFjtifTql3vUO12qox8RECJJ2dLiT+x0e
h7bTDFApEvrp1ikbq8fMGVsueIJqiIMRN1VOpOQPo5s4koaJuBcBMrf+/sn65veA
agV+FBNmGzfnHDuSgVBiefmwWmHc+F/3OZytoJUENC7JHcrQHdFLpiPB6ZReR1XE
KaXPCxaAkyTUa22tdvQ+nLMknzGCZq9JgcZPQ/+QGR2mI+RYIFxnmKD3v5Ah/Fe2
++xtSP0HBqi29rHnW/uQ1rftXx/vEGPl9zeR8Ixuo73xS4DVuWP5VTibyenRGOvV
Bqb0MfwbzfwEjo2imRhYKWz1rbM+JfHOmFs3k/oM1EWHyF4LME8=
=T4AU
-----END PGP SIGNATURE-----

--------------Yg56NnrbRU8ZFgQ8G5K3QKGt--
