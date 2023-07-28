Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 25238767632
	for <lists+linux-man@lfdr.de>; Fri, 28 Jul 2023 21:19:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231474AbjG1TTf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 28 Jul 2023 15:19:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43098 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229798AbjG1TTe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 28 Jul 2023 15:19:34 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E901819BA
        for <linux-man@vger.kernel.org>; Fri, 28 Jul 2023 12:19:32 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 7B30162117
        for <linux-man@vger.kernel.org>; Fri, 28 Jul 2023 19:19:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 02A65C433C7;
        Fri, 28 Jul 2023 19:19:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1690571971;
        bh=JVHCEm8ZzoHGfkQzlIWVB/vS22FiObSI7crWWy3imQE=;
        h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
        b=FllQoIKoGEik1xITClQn0UHcuHKku1Yiq/7lUJDzB4GkFhAiDcWeRb2A18+Edw/m/
         vbsoEn0gOAeLWbMzT5HVoh2ylEclHkUOZRQ/E6/zcWgOuALpyE7x0wPfdVLc5lvmje
         Jxnh3szF5tQ+wW2cVu/Gv+kFLOByRIkzZ1ZnudMbyjltjA3kb4Tyk2W3CTb5V+axZ+
         yToaQF8kp8PhJ6vqt+6lVplDpWqrmv2JtxzHPt3T0jsTi94qG8Yhf1rSaGfumw2wb/
         G4FxwDZMX6LV8vv9GAydbYxHbsVNmPF3O6LSjQDoZ2HxnUu835mHStJ4HUlyv1ctlv
         2YEEYgiX6P8SQ==
Message-ID: <0945a1fc-08ef-342d-93f5-58c9df1e19e8@kernel.org>
Date:   Fri, 28 Jul 2023 21:19:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: Fwd: Fwd: [RFC PATCH 1/4] splice: Fix corruption of spliced data
 after splice() returns
Content-Language: en-US
From:   Alejandro Colomar <alx@kernel.org>
To:     Linus Torvalds <torvalds@linux-foundation.org>,
        linux-man <linux-man@vger.kernel.org>
Cc:     Randy Dunlap <rdunlap@infradead.org>,
        Matt Whitlock <kernel@mattwhitlock.name>
References: <c8a3e2da-2b45-3b15-e13d-13c4ab1c9083@infradead.org>
 <309bcb76-9b96-724d-606a-2ded49e16228@kernel.org>
Organization: Linux
In-Reply-To: <309bcb76-9b96-724d-606a-2ded49e16228@kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------7JcLGqevezDXOxXkdCoQuqQf"
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------7JcLGqevezDXOxXkdCoQuqQf
Content-Type: multipart/mixed; boundary="------------nKcTpDLso0h7sjrjNjtrKS8X";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 linux-man <linux-man@vger.kernel.org>
Cc: Randy Dunlap <rdunlap@infradead.org>,
 Matt Whitlock <kernel@mattwhitlock.name>
Message-ID: <0945a1fc-08ef-342d-93f5-58c9df1e19e8@kernel.org>
Subject: Re: Fwd: Fwd: [RFC PATCH 1/4] splice: Fix corruption of spliced data
 after splice() returns
References: <c8a3e2da-2b45-3b15-e13d-13c4ab1c9083@infradead.org>
 <309bcb76-9b96-724d-606a-2ded49e16228@kernel.org>
In-Reply-To: <309bcb76-9b96-724d-606a-2ded49e16228@kernel.org>

--------------nKcTpDLso0h7sjrjNjtrKS8X
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Randy, Linus,

On 2023-07-20 17:24, Linus Torvalds wrote:
> Oh, and none of this discussion has had any man-page people associated =
with it.
>=20
> So in order to maybe get the documentation clarified, let's add them.
>=20
> Alejandro, Michael, see
>=20
>   https://lore.kernel.org/lkml/0d10033a-7ea1-48e3-806b-f74000045915@mat=
twhitlock.name/
>=20
> for the original email (and thread).
>=20
>                  Linus

Thank you both for pointing to that!  I've been checking, and the
splice.2 source code already has some hidden comments right after a
paragraph.

(see <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/ma=
n2/splice.2#n215>)

I think we can append a paragraph like the suggested one after the
one that starts in line 216.  Can you clarify if the requirement of
taking care of not modifying the buffer applied to just splice(2) or
also tee(2) and/or vmsplice(2).  BTW, if you want to send a patch,
that's very welcome.

Cheers,
Alex

On 2023-07-20 10:13, Alejandro Colomar wrote:
> Hi Randy!
>=20
> Thanks!  I'll FWD to the linux-man@ mailing list too.
>=20
> Cheers,
> Alex
>=20
>=20
> -------- Forwarded Message --------
> Subject: Fwd: [RFC PATCH 1/4] splice: Fix corruption of spliced data af=
ter splice() returns
> Date: Wed, 19 Jul 2023 17:36:03 -0700
> From: Randy Dunlap <rdunlap@infradead.org>
> To: Alejandro Colomar <alx.manpages@gmail.com>, Michael Kerrisk <mtk.ma=
npages@gmail.com>
>=20
> FYI:
>=20
>=20
> -------- Forwarded Message --------
> Subject: Re: [RFC PATCH 1/4] splice: Fix corruption of spliced data aft=
er splice() returns
> Date: Wed, 19 Jul 2023 17:00:17 -0700
> From: Linus Torvalds <torvalds@linux-foundation.org>
> To: Matt Whitlock <kernel@mattwhitlock.name>
> CC: Matthew Wilcox <willy@infradead.org>, Miklos Szeredi <miklos@szered=
i.hu>, David Howells <dhowells@redhat.com>, netdev@vger.kernel.org, Dave =
Chinner <david@fromorbit.com>, Jens Axboe <axboe@kernel.dk>, linux-fsdeve=
l@kvack.org, linux-mm@kvack.org, linux-kernel@vger.kernel.org, Christoph =
Hellwig <hch@lst.de>, linux-fsdevel@vger.kernel.org
>=20
> On Wed, 19 Jul 2023 at 16:41, Matt Whitlock <kernel@mattwhitlock.name> =
wrote:
>>
>> Then that is my request. This entire complaint/discussion/argument wou=
ld
>> have been avoided if splice(2) had contained a sentence like this one =
from
>> sendfile(2):
>>
>> "If out_fd refers to a socket or pipe with zero-copy support, callers =
must
>> ensure the transferred portions of the file referred to by in_fd remai=
n
>> unmodified until the reader on the other end of out_fd has consumed th=
e
>> transferred data."
>>
>> That is a clear warning of the perils of the implementation under the =
hood,
>> and it could/should be copied, more or less verbatim, to splice(2).
>=20
> Ack. Internally in the kernel, the two really have always been more or
> less of intermingled.
>=20
> In fact, I think splice()/sendfile()/tee() could - and maybe should -
> actually be a single man-page to make it clear that they are all
> facets of the same thing.
>=20
> The issues with TCP_CORK exist for splice too, for example, for
> exactly the same reasons.
>=20
> And while SPLICE_F_MORE exists, it only deals with multiple splice()
> calls, it doesn't deal with the "I wrote a header before I even
> started using splice()" case that is the one that is mentioned for
> sendfile().
>=20
> Or course, technically TCP_CORK exists for plain write() use as well,
> but there the portable and historical fix is simply to use writev()
> and send it all in one go.
>=20
> So it's hopefully only when you use sendfile() and splice() that you
> end up with "oh, but I have multiple different *kinds* of sources, and
> I want to cork things until I've dealt with them all".
>=20
>             Linus

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------nKcTpDLso0h7sjrjNjtrKS8X--

--------------7JcLGqevezDXOxXkdCoQuqQf
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTEFLoACgkQnowa+77/
2zKbfRAAgHEyyweGMGlSdViWjsNhh8j5esCLx7B6H4oTa0L4XC1L7bHEDB1pFIwE
liffUPGY5uy5+O1xfdw4S4mnncS0uJJWyBzxQgNH2D+4oKdVur297yXQzPdDF0Ip
czTsEC+0X2rYRA3+huxWMCC/7W9kWAWzHsxOcjaEjBE4GmeD9Hy0OLfDsK7ke9su
KGNli48gQGL3IfuAjfNOb1IEATwV6hsZmWPUaHrJ+iVGi8OvlcSF/d9B0P5Ag+TA
6cLeIL9MtLEqzChLt9kZDCo/c4VoqaO/CVdtJQCwMr4ESwUbEdNVUoYuU/NeEstA
OnLMpisQkUJ3hSEMSfZVvDW7D5IDwDhcXjdaOODEGDtAZYe4uNg4NgDGpn10eVov
EltPXY1KlDCKjfVmYWkT32TPep8vwNznpfa60TTIunT58p4U7snt8hlxd7TDe62X
7AflEa5DZ5g7b1L+brkxEMVhdlPUm2x9D2PTRLBvTo/tIpPU5bLobYr3hQ/r7vJa
V9J5MAlta+ovYrh38vFZHwo0A07xSxhiX/FFp9FW3EKepGf910+SX25t/U/8DD8M
cU+t1u11F/+GPF+1Q4ldLgSUwE+HofR/pJRA1OnUMWM6Qs5Tg/6z4h4nGtna0CdC
+caEOh8n3244ZsL46q8BKks6Az5s2ntRDWfEQi1dzRi50qPBSkc=
=B5ZL
-----END PGP SIGNATURE-----

--------------7JcLGqevezDXOxXkdCoQuqQf--
