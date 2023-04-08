Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C24786DBB33
	for <lists+linux-man@lfdr.de>; Sat,  8 Apr 2023 15:34:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230140AbjDHNe2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Apr 2023 09:34:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50468 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229820AbjDHNe1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Apr 2023 09:34:27 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC364E061
        for <linux-man@vger.kernel.org>; Sat,  8 Apr 2023 06:34:23 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id l26-20020a05600c1d1a00b003edd24054e0so2089206wms.4
        for <linux-man@vger.kernel.org>; Sat, 08 Apr 2023 06:34:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680960862; x=1683552862;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4pp35IxuV1p3pdgcYL/OWwmDftEOZgMqLw1SwxaF41U=;
        b=a8ONL7cUQb1goFGxI5Rj9Ew+KSNRbWwTgT4fRykK6610HPKcCciYObyQh/e6H1KtBq
         dK3t0Utl7iftWzyPZph/NQBwiYo6Gp+xLoYQvWvq0Q6z2MlslIjErEMClBbFfFYv+Y5o
         Fqpe7lbgzm+aB+6dOdtuXZk53KHjXrdUvm9Dwoc76QB8+L692Xt9TCG1e68fENrvU+ti
         kUZNeEeirqyZ7m+Q29D3BraADufImWlnH7SXnjjP2pZ8GcFl0jng/HmhI5FGgcVj952H
         Sx+BAd1Ea5IZxR8K4h5USCG5fr/bvkNraMIoML7GlB5sOJ/jQJkAXSifPEloL8BKqaQa
         ALDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680960862; x=1683552862;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4pp35IxuV1p3pdgcYL/OWwmDftEOZgMqLw1SwxaF41U=;
        b=pHNgb9IAgMsdy7q9Ar+fkPbJTo4BGMy19MxfP7K974IW1bl/DcUelTHc+KMDSsYKpu
         GlGIE/9AfXYZkpIwVnPmlWmrtpzrdFKDd51JJqjQjpQArVW6EV2Ye/dMH8NsuGQZNtKt
         3G2fy3C1wI19Kaa566kBN6BZG9GNAtECwjQhP79Gr8OACSQjh/SRtxSDQRXDf2fS/cbS
         4Qa9aoX2T3zRWYIlDJBis4iO0+194rH+a7e0yS8rq608SUWK1V5FYGh6zF1buGyVxCtt
         p4iutdtKYDDKUaGCMGCIJxtHGXuczEeKNrhSiRxKkgd+We27DNP1Vs6w4if2YO0lqb59
         blaQ==
X-Gm-Message-State: AAQBX9cMr5UOBWyYL3853/FUwMszaRKXJ3KkEyI/jX3a6c0jwq4tnBXZ
        RoaO6wbVpcOcoCBnyXQIF/Vov2ByFE0=
X-Google-Smtp-Source: AKy350Z0JdRKUlgJjcZL5/3AbCssyvKkURPgRzXeuYwbmedQlt9Zjy2NxbiCx2tRyUiXae34JCeI3w==
X-Received: by 2002:a7b:ca45:0:b0:3f0:683d:224d with SMTP id m5-20020a7bca45000000b003f0683d224dmr1307358wml.9.1680960861967;
        Sat, 08 Apr 2023 06:34:21 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id i7-20020a5d5587000000b002cf8220cc75sm6930775wrv.24.2023.04.08.06.34.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Apr 2023 06:34:21 -0700 (PDT)
Message-ID: <5bce07b9-d4b7-8cb4-273d-72c3867682ba@gmail.com>
Date:   Sat, 8 Apr 2023 15:34:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH 2/2] userfaultfd.2: fix userfaultfd_demo output
Content-Language: en-US
To:     Nadav Amit <nadav.amit@gmail.com>, linux-man@vger.kernel.org
Cc:     "Michael Kerrisk )" <mtk.manpages@gmail.com>,
        Peter Xu <peterx@redhat.com>,
        David Hildenbrand <david@redhat.com>,
        Nadav Amit <namit@vmware.com>
References: <20220307184852.20351-1-namit@vmware.com>
 <20220307184852.20351-2-namit@vmware.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220307184852.20351-2-namit@vmware.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------UCu0OL5LibNQFHgeJSf5SVjR"
X-Spam-Status: No, score=-0.3 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------UCu0OL5LibNQFHgeJSf5SVjR
Content-Type: multipart/mixed; boundary="------------yoIipfoTGFv1vhhZQV2AHBPo";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Nadav Amit <nadav.amit@gmail.com>, linux-man@vger.kernel.org
Cc: "Michael Kerrisk )" <mtk.manpages@gmail.com>, Peter Xu
 <peterx@redhat.com>, David Hildenbrand <david@redhat.com>,
 Nadav Amit <namit@vmware.com>
Message-ID: <5bce07b9-d4b7-8cb4-273d-72c3867682ba@gmail.com>
Subject: Re: [PATCH 2/2] userfaultfd.2: fix userfaultfd_demo output
References: <20220307184852.20351-1-namit@vmware.com>
 <20220307184852.20351-2-namit@vmware.com>
In-Reply-To: <20220307184852.20351-2-namit@vmware.com>

--------------yoIipfoTGFv1vhhZQV2AHBPo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Nadav,

On 3/7/22 19:48, Nadav Amit wrote:
> From: Nadav Amit <namit@vmware.com>
>=20
> A bug in the kernel caused in recent version a different output (masked=

> offset). Update the output of the demo program accordingly.

I'd like to have some more information about this in the commit message.
I don't really understand it.  When was the bug introduced?  When was it
fixed?  Was the example in the page created in a buggy version?

Thanks,
Alex

>=20
> Signed-off-by: Nadav Amit <namit@vmware.com>
> ---
>  man2/userfaultfd.2 | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>=20
> diff --git a/man2/userfaultfd.2 b/man2/userfaultfd.2
> index cee7c01d2..779ff8817 100644
> --- a/man2/userfaultfd.2
> +++ b/man2/userfaultfd.2
> @@ -648,7 +648,7 @@ Address returned by mmap() =3D 0x7fd30106c000
> =20
>  fault_handler_thread():
>      poll() returns: nready =3D 1; POLLIN =3D 1; POLLERR =3D 0
> -    UFFD_EVENT_PAGEFAULT event: flags =3D 0; address =3D 7fd30106c00f
> +    UFFD_EVENT_PAGEFAULT event: flags =3D 0; address =3D 7fd30106c000
>          (uffdio_copy.copy returned 4096)
>  Read address 0x7fd30106c00f in main(): A
>  Read address 0x7fd30106c40f in main(): A
> @@ -657,7 +657,7 @@ Read address 0x7fd30106cc0f in main(): A
> =20
>  fault_handler_thread():
>      poll() returns: nready =3D 1; POLLIN =3D 1; POLLERR =3D 0
> -    UFFD_EVENT_PAGEFAULT event: flags =3D 0; address =3D 7fd30106d00f
> +    UFFD_EVENT_PAGEFAULT event: flags =3D 0; address =3D 7fd30106d000
>          (uffdio_copy.copy returned 4096)
>  Read address 0x7fd30106d00f in main(): B
>  Read address 0x7fd30106d40f in main(): B
> @@ -666,7 +666,7 @@ Read address 0x7fd30106dc0f in main(): B
> =20
>  fault_handler_thread():
>      poll() returns: nready =3D 1; POLLIN =3D 1; POLLERR =3D 0
> -    UFFD_EVENT_PAGEFAULT event: flags =3D 0; address =3D 7fd30106e00f
> +    UFFD_EVENT_PAGEFAULT event: flags =3D 0; address =3D 7fd30106e000
>          (uffdio_copy.copy returned 4096)
>  Read address 0x7fd30106e00f in main(): C
>  Read address 0x7fd30106e40f in main(): C

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------yoIipfoTGFv1vhhZQV2AHBPo--

--------------UCu0OL5LibNQFHgeJSf5SVjR
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQxbVwACgkQnowa+77/
2zLxbg/+Ku84Jx95YJ0NYrAB7IXEabVBFFsuowoneyqu1ccRbRbr7LBVczOPWB8r
RnRBVALnWuq5hE59ZLCbMQVFl3NP+tCFYqRNHvROXU0ZaA9ZWcrskSEPrSj66u+o
eyHFhShUXIxkA6X/TmaSMNj6JxQd5Tpj8TlafHA/JmJU6Ws00qKbFSXe2UqtCukp
4y2CRFkNpmUBobG5vF55yZha17emSlzYIJYHL7ogjGczzGHCdZrsXuLCT+94v2TM
0ynj68F+mKHWbZSP5Z/8xvOA+sDudXkQ4lpKqF+++DGQBQKViZle4Hj1Opk61BtQ
bivvdO0/T4LTCfq2TLudBKAR55UKMjS/Bobd98v8pqaeaC7stP+ssFWpEFb9MfQf
MJevVBVmW4tY5TbT5YBfjLDjktWiibATbym3FZBnJNYZczGS5fmEearWBRdOF604
PUXOikRIjHvm4ZzuV1BSF3pJKVN1H4vk1Zcl0KMkX5O4d1ZCPmQxkU00npgRxJyb
PptadfXjseUujzRJNnCVYaJ3s/DalFDswRSyC5rO4rjYQGJ3QpO+WAdYBUd2fS7k
UQ6nh0BfMLsJRXXiOxFmnxAtsjYheUTbWnfzrsn4DFDcSvHvjzY5dJ7w3DImfzhe
6v86n6Cj6iLcS9mtZ8PArIpXTbT9YV5g6MF6D9zBdP3zYY5v9h0=
=pQ1Y
-----END PGP SIGNATURE-----

--------------UCu0OL5LibNQFHgeJSf5SVjR--
