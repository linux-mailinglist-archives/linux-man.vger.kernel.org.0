Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 801207CA4C3
	for <lists+linux-man@lfdr.de>; Mon, 16 Oct 2023 12:08:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231177AbjJPKIR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 16 Oct 2023 06:08:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56512 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230152AbjJPKIR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 16 Oct 2023 06:08:17 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 72BFCDE
        for <linux-man@vger.kernel.org>; Mon, 16 Oct 2023 03:08:14 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3F0ECC433CC;
        Mon, 16 Oct 2023 10:08:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1697450894;
        bh=zLAw5nABE6YQcO+tubRiueEc8JC5NxJ74eur3PSREro=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=gBGW5hNM1MofZ0KIgzsIjpYZfzEy1wDIk2zXztbW+VHFfxwubHtA1pPxIF7QhyyxX
         5urLxMQsBtHrVf3Iqbg4lDzzfIYlEx950/w6RwHWqTBj0gIVgAqyrIbYeLQ+PXr34K
         G+PsgFjiZl1Ackl48etiBs3TulbVpdBkWYrt3xVFUIgIkFdTpTyITsBKzFPMgfii6F
         oRBw9cjawrKUWO5UeNbXp62XWcyBAJ4pmUk0xzeiFel8V5E1kD0OZ+F5m/RncmCFns
         HOF+/CiXZcN/zqqC9ACJg+pBlMAeRTkQnA+Z80UNOLGHX9fkVVpi8GXW8yyHulvlzO
         QAHWCMnfYPdWQ==
Date:   Mon, 16 Oct 2023 12:08:10 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Siddhesh Poyarekar <siddhesh@gotplt.org>
Cc:     linux-man@vger.kernel.org, alx.manpages@gmail.com
Subject: Re: [PATCH] ldd: Do not recommend binutils as the safer option
Message-ID: <ZS0LipiiOBsntjmb@debian>
References: <20231016061923.105814-1-siddhesh@gotplt.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="OmOohKkSemlxzwVB"
Content-Disposition: inline
In-Reply-To: <20231016061923.105814-1-siddhesh@gotplt.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--OmOohKkSemlxzwVB
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 16 Oct 2023 12:08:10 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Siddhesh Poyarekar <siddhesh@gotplt.org>
Cc: linux-man@vger.kernel.org, alx.manpages@gmail.com
Subject: Re: [PATCH] ldd: Do not recommend binutils as the safer option

Hi Siddhesh,

On Mon, Oct 16, 2023 at 02:19:23AM -0400, Siddhesh Poyarekar wrote:
> The binutils security policy[1] states that diagnostic tools should not
> be expected to be safe without sandboxing, so it doesn't make sense to
> recommend it as the alternative to ldd, especially since it is not a
> drop-in replacement.  Recommend sandboxing instead, since that is in
> fact the safest known way at the moment to deal with untrusted binaries.
>=20
> [1] https://sourceware.org/git/?p=3Dbinutils-gdb.git;a=3Dblob;f=3Dbinutil=
s/SECURITY.txt
>=20
> Signed-off-by: Siddhesh Poyarekar <siddhesh@gotplt.org>
> ---
>  man1/ldd.1 | 14 +-------------
>  1 file changed, 1 insertion(+), 13 deletions(-)
>=20
> diff --git a/man1/ldd.1 b/man1/ldd.1
> index cca96ec4d..f86798566 100644
> --- a/man1/ldd.1
> +++ b/man1/ldd.1
> @@ -94,20 +94,8 @@ Thus, you should
>  .I never
>  employ
>  .B ldd
> -on an untrusted executable,
> +on an untrusted executable without appropriate sandboxing,
>  since this may result in the execution of arbitrary code.
> -A safer alternative when dealing with untrusted executables is:
> -.PP
> -.in +4n
> -.EX
> -$ \fBobjdump \-p /path/to/program | grep NEEDED\fP

Should we maybe keep this example, and suggest using it with sandboxing?
Or is it not useful anymore?

Thanks,
Alex

> -.EE
> -.in
> -.PP
> -Note, however, that this alternative shows only the direct dependencies
> -of the executable, while
> -.B ldd
> -shows the entire dependency tree of the executable.
>  .SH OPTIONS
>  .TP
>  .B \-\-version
> --=20
> 2.41.0


--=20
<https://www.alejandro-colomar.es/>

--OmOohKkSemlxzwVB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUtC4oACgkQnowa+77/
2zJCvQ/+L7x1CKTzmb1+qN214ZyKi8oyiOoUGteokmxZgwNa2tGWg1UdsQGfZkzA
URYa84NoWd+WM7W604Qf3sAMwyitxA95U7DUOrHE/rBRAW4HURkU1fACalf0rpN2
NePTl0CapNxOX3Bb5bNMFvOCY0OzRUG52QycocNMyTNuV965b6HmZ20leI9ppZid
TlHhD6gakyuYrB8IEZ3GwaqpXxY5cwXdeepmxADyjgHHwS7QeiyCYTCDmBIhW2Og
REXg/Y3YdwPnnizUvbBNHo2nI0J92/zW3SfRkyzdHPqeFh5eDp0mWn1BnAdQQ6Iy
c/XUhF7UMketL+3CX0Im/S/yHi0UXHNPrk3pRBHsFRM9WRcbgCHo4xRYlHksekrc
6O3yrcllZbuE/ovwY3eQPe+e3XykoKsR/D43XuIW3U1BVRclkF4IPnp4HmFRG4lG
tn/NBptHWES7nGjyzukkuIpelRcO9fXRUnMQwrSCUAAJSrUnOtafkhz6OtMWB5lm
gjZnb6pbe38y042fjOt12HxxvEgzeXIybLRblBnWQ7LnOXgUDuDQclDejObTaLeQ
IfCKbjDKTuYH7wY7g5/PHrmJhsT2YxI8rMcobgh5VyKzkmrKHRBC3WdMPPMKHtxH
n5xcK1atD0YRLBlPvBYf/h/BPOtED85jL1WFGIaiyhgxRBtT6bU=
=zN3H
-----END PGP SIGNATURE-----

--OmOohKkSemlxzwVB--
