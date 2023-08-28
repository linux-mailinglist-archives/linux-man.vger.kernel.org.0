Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2168178AFE0
	for <lists+linux-man@lfdr.de>; Mon, 28 Aug 2023 14:18:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229516AbjH1MR4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Aug 2023 08:17:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35174 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232674AbjH1MRs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Aug 2023 08:17:48 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B36B012D
        for <linux-man@vger.kernel.org>; Mon, 28 Aug 2023 05:17:44 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 522426456A
        for <linux-man@vger.kernel.org>; Mon, 28 Aug 2023 12:17:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0A347C433C7;
        Mon, 28 Aug 2023 12:17:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1693225063;
        bh=mKiPi5exy0474KDZG34CpYu77r8IlqjEobrAF363RPA=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=fbwhpsJNJ5xFdhHr9F1PTDT4tVWOOn93xZSGEZ9JcTQ3u9JwDZ7wsvQou23IRf/Me
         +/9s9BX3AB2lnZh3NPzagBakZTvVRHkW2CXHDGZgRBmotVRVJ6Js43zYwdvSnDIPeJ
         oPLFeS/sU/n6dhX5DhKPZZQlS4KkgHEamASc4C+tUyNAAzLamtEPOh3AMAC2mnky8T
         Tyh3JaTQJJBrML38EvVYY6Swo4sEwUvp236XQN3tQ1HzmF4akFU39Z475a9bwmeYEF
         z2An6My24iCzpddtOFL3Ga9wXUMpcgANnr9oggGyxLCV14JEwbN8CeRrzX2qAIWabf
         Y7G54WcIBYL9g==
Message-ID: <ff61e9fb-b2ed-e136-6249-1b8541a75d7a@kernel.org>
Date:   Mon, 28 Aug 2023 14:17:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: No 6.05/.01 pdf book available
To:     Brian.Inglis@Shaw.ca
Cc:     Deri <deri@chuzzlewit.myzen.co.uk>, linux-man@vger.kernel.org
References: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca>
 <2704680.mvXUDI8C0e@pip> <a1550f24-6b0f-0173-967a-7dd31dbafd05@Shaw.ca>
 <3262525.44csPzL39Z@pip> <54945a93-399e-620f-be6e-bbe740abb21e@kernel.org>
 <d373a66b-8312-fcb4-103d-b6ce22a6b40f@Shaw.ca>
Content-Language: en-US
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <d373a66b-8312-fcb4-103d-b6ce22a6b40f@Shaw.ca>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------QTfsMLPLzo2YCzjq1aHCx6AD"
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------QTfsMLPLzo2YCzjq1aHCx6AD
Content-Type: multipart/mixed; boundary="------------L28oxoYxzPsd7PaLnJkSoYO2";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Brian.Inglis@Shaw.ca
Cc: Deri <deri@chuzzlewit.myzen.co.uk>, linux-man@vger.kernel.org
Message-ID: <ff61e9fb-b2ed-e136-6249-1b8541a75d7a@kernel.org>
Subject: Re: No 6.05/.01 pdf book available
References: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca>
 <2704680.mvXUDI8C0e@pip> <a1550f24-6b0f-0173-967a-7dd31dbafd05@Shaw.ca>
 <3262525.44csPzL39Z@pip> <54945a93-399e-620f-be6e-bbe740abb21e@kernel.org>
 <d373a66b-8312-fcb4-103d-b6ce22a6b40f@Shaw.ca>
In-Reply-To: <d373a66b-8312-fcb4-103d-b6ce22a6b40f@Shaw.ca>

--------------L28oxoYxzPsd7PaLnJkSoYO2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Brian,

On 2023-08-22 01:45, Brian Inglis wrote:
> I am in favour of all punctuation being treated as word spaces and sort=
ing
> "cat ..." before "cat..." but find the real orders more evocative and e=
asier to=20
> decide about than examples.

Here's an excerpt of how treating - and _ as spaces looks like.  I think
it's a reasonable order.  Should I apply that diff?

Cheers,
Alex

$ git diff
diff --git a/scripts/sortman b/scripts/sortman
index a8f70bab5..6d1d92f09 100755
--- a/scripts/sortman
+++ b/scripts/sortman
@@ -9,7 +9,7 @@ sed   -E '/\/intro./  s/.*\.([[:digit:]])/\10\t&/' \
 | sed -E '            s/\t(.*)/&\n\1/' \
 | sed -E '/\t/        s/\.[[:digit:]]([[:alpha:]][[:alnum:]]*)?\>.*//' \=

 | sed -E '/\t/        s/\/[_-]*/\//g' \
-| sed -E '/\t/        s/[_-]/_/g' \
+| sed -E '/\t/        s/[_-]/ /g' \
 | sed -E '/\t/        {N;s/\n/\t/;}' \
 | sort -fV -k1,2 \
 | cut -f3;
$ touch man8/ld-z.8
$ touch man8/ld.8
$ find man8 | ./scripts/sortman=20
man8/intro.8
man8/iconvconfig.8
man8/ld.8
man8/ld-linux.8
man8/ld-linux.so.8
man8/ld-z.8
man8/ld.so.8
man8/ldconfig.8
man8/nscd.8
man8/sln.8
man8/tzselect.8
man8/zdump.8
man8/zic.8
man8


>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------L28oxoYxzPsd7PaLnJkSoYO2--

--------------QTfsMLPLzo2YCzjq1aHCx6AD
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTskFkACgkQnowa+77/
2zLrXg//QPUcs5URlebYV6MRHdF5XYcsgbTMBswOy1U/CmBCIYChhOrWNvYX9MDg
pLz2Tpq8jRbQ2nnDvHR8SZT3zApl2Xgfun8Ie0XlZ2JLkGv+KT8+r4hAScdeD8Oa
7nmXLFuWvDBtUipbMoxj34TLea7G0iTdc/HsXN3CRF0b7F4mRgGwADmJCbVqrNaO
EsHZAmGnBJftesSuff0TlDmExvRzv56R1CFubN7Ri4XByJSY6eWiNz/JRCGVP3Qw
BylgqCuaXmiVVBIaLGO6IrQrqc2iJ7h3VUMDsvt2yxtALO9yWfsDAXjZ75DazlDv
VTv2Bor+zUl+nxNe15EaNYq5ozeAzqBeTyXFLqyUkdjUqjmlukio1/c+kZCwHilX
UDKSXjtCb2epC3yg9NTVeoMwHeBaN5Gujxyjv8IxcUN0gfrHJmye5A31wgEiV0Xm
hZRP7Ns4IpIW9zxa4WTPt07+ctRO4SNHE6IOiWkc7hssM6u9G574Y0uQMDpqh2lz
QrC0EerK5ZGU0Mriy5XYed+dAO+bTy4alOnkei7lsXjdCn5gjJp5l9roI2lNs0n4
rz3eNBo2mi4XcXkDRnsi80FJShAK1u2FVZOvx9eAUS3fc1tzF+Lg0Xsi+UsMot08
gaO6kUPbOjU4e7jTMiCFiGsZHOtlsSMnFZiG9A6i/hSR7gC0h1g=
=1BO2
-----END PGP SIGNATURE-----

--------------QTfsMLPLzo2YCzjq1aHCx6AD--
