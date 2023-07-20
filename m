Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 284E875A8D6
	for <lists+linux-man@lfdr.de>; Thu, 20 Jul 2023 10:13:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230027AbjGTIN0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Jul 2023 04:13:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53666 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230168AbjGTINX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Jul 2023 04:13:23 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33087269D
        for <linux-man@vger.kernel.org>; Thu, 20 Jul 2023 01:13:16 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id BFC2D61902
        for <linux-man@vger.kernel.org>; Thu, 20 Jul 2023 08:13:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 59A72C433C8;
        Thu, 20 Jul 2023 08:13:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689840795;
        bh=adh30jl/3Bu43Ui9FisTUFjR9vAKac4BK9oWm28BKfk=;
        h=Date:Subject:References:To:Cc:From:In-Reply-To:From;
        b=t79q0BlDucAcb5PDfcXizx7DUO9+iOSFfJt3XysgJwrNvkvEjh0kSCjedBhQl0Q9l
         h4y52vJKC7eBsPgjQB/UhNo021+0Yf6xMX5ZZf37Jnuy0v39HvQvNEDfW/OXjEaIPZ
         LMQEp4BJJP5kjToN9vE3w3uOgxUGKzfTrLZovCKMZHHiEjIL+ZG7SGn7PDkLFS8ZSi
         +O8VvygnJgjiBil3bn/TdS2f5kFcb/WpNa0JJrTTth1QZiU4M78uZl3vh0tgF04p0N
         62ndjQPrh/ib2Mh0ft2I0SALVIOsdLOS8+r2gDpqM14jWY2yRvZuwHICFSuZAhOMmp
         1LrNSaYvynwlg==
Message-ID: <309bcb76-9b96-724d-606a-2ded49e16228@kernel.org>
Date:   Thu, 20 Jul 2023 10:13:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Fwd: Fwd: [RFC PATCH 1/4] splice: Fix corruption of spliced data
 after splice() returns
Content-Language: en-US
References: <c8a3e2da-2b45-3b15-e13d-13c4ab1c9083@infradead.org>
To:     linux-man <linux-man@vger.kernel.org>
Cc:     Randy Dunlap <rdunlap@infradead.org>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <c8a3e2da-2b45-3b15-e13d-13c4ab1c9083@infradead.org>
X-Forwarded-Message-Id: <c8a3e2da-2b45-3b15-e13d-13c4ab1c9083@infradead.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------obFPNKWhdX9qTpTJGxpuWr6d"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------obFPNKWhdX9qTpTJGxpuWr6d
Content-Type: multipart/mixed; boundary="------------0nZs0CuvoGcWyOE0XV6nQZEI";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: linux-man <linux-man@vger.kernel.org>
Cc: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <309bcb76-9b96-724d-606a-2ded49e16228@kernel.org>
Subject: Fwd: Fwd: [RFC PATCH 1/4] splice: Fix corruption of spliced data
 after splice() returns
References: <c8a3e2da-2b45-3b15-e13d-13c4ab1c9083@infradead.org>
In-Reply-To: <c8a3e2da-2b45-3b15-e13d-13c4ab1c9083@infradead.org>

--------------0nZs0CuvoGcWyOE0XV6nQZEI
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Randy!

Thanks!  I'll FWD to the linux-man@ mailing list too.

Cheers,
Alex


-------- Forwarded Message --------
Subject: Fwd: [RFC PATCH 1/4] splice: Fix corruption of spliced data afte=
r splice() returns
Date: Wed, 19 Jul 2023 17:36:03 -0700
From: Randy Dunlap <rdunlap@infradead.org>
To: Alejandro Colomar <alx.manpages@gmail.com>, Michael Kerrisk <mtk.manp=
ages@gmail.com>

FYI:


-------- Forwarded Message --------
Subject: Re: [RFC PATCH 1/4] splice: Fix corruption of spliced data after=
 splice() returns
Date: Wed, 19 Jul 2023 17:00:17 -0700
From: Linus Torvalds <torvalds@linux-foundation.org>
To: Matt Whitlock <kernel@mattwhitlock.name>
CC: Matthew Wilcox <willy@infradead.org>, Miklos Szeredi <miklos@szeredi.=
hu>, David Howells <dhowells@redhat.com>, netdev@vger.kernel.org, Dave Ch=
inner <david@fromorbit.com>, Jens Axboe <axboe@kernel.dk>, linux-fsdevel@=
kvack.org, linux-mm@kvack.org, linux-kernel@vger.kernel.org, Christoph He=
llwig <hch@lst.de>, linux-fsdevel@vger.kernel.org

On Wed, 19 Jul 2023 at 16:41, Matt Whitlock <kernel@mattwhitlock.name> wr=
ote:
>
> Then that is my request. This entire complaint/discussion/argument woul=
d
> have been avoided if splice(2) had contained a sentence like this one f=
rom
> sendfile(2):
>
> "If out_fd refers to a socket or pipe with zero-copy support, callers m=
ust
> ensure the transferred portions of the file referred to by in_fd remain=

> unmodified until the reader on the other end of out_fd has consumed the=

> transferred data."
>
> That is a clear warning of the perils of the implementation under the h=
ood,
> and it could/should be copied, more or less verbatim, to splice(2).

Ack. Internally in the kernel, the two really have always been more or
less of intermingled.

In fact, I think splice()/sendfile()/tee() could - and maybe should -
actually be a single man-page to make it clear that they are all
facets of the same thing.

The issues with TCP_CORK exist for splice too, for example, for
exactly the same reasons.

And while SPLICE_F_MORE exists, it only deals with multiple splice()
calls, it doesn't deal with the "I wrote a header before I even
started using splice()" case that is the one that is mentioned for
sendfile().

Or course, technically TCP_CORK exists for plain write() use as well,
but there the portable and historical fix is simply to use writev()
and send it all in one go.

So it's hopefully only when you use sendfile() and splice() that you
end up with "oh, but I have multiple different *kinds* of sources, and
I want to cork things until I've dealt with them all".

            Linus

--------------0nZs0CuvoGcWyOE0XV6nQZEI--

--------------obFPNKWhdX9qTpTJGxpuWr6d
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmS47JgACgkQnowa+77/
2zIIsA/+Mb3+hsvbfFQDqrB6hJYSqOHs3rthfgYiccoqtZl4hXs3R5aYeNhOCm2E
yLFk/gFI+7gCsPzJRVCqfkDwg1muNvjbcmeHzKxRvsycfuUrhYThMr/T0pE6KME6
jlMGxm7tGD21RxYXy0scRpJvLqAqgL1iZZtVsgFQpgzI46tzK9x2y5qvl/sZxwxH
p0XM3riai9LOGnc/dUfxBL8my11pEbg1rb/fWyV0qvr2j9Y2QLzI0DAxZrUNUkeW
QB1VdlKOQAYd94mtjS9qgJKeLI80Yvy7/Bvtog6Uqlkt5pnyfrMaEpj+BS3X8/+A
LrjTNNZvsozGW4PEyyOmUBxrkPJHnQp9mh3JTDmL3H5HPshg0w8VpyulcTkGW6ZU
waeuh/uqxtHVqV1dctRs1PKj0z4/TZp4ZrI5rPTSCJ8kelUEnXwzT/ZQg0MehzVI
A9v58+Y1Pgef60A0qLOMtDEewVviHqytuxhs3BTAp8VfuYtPXJtNYTHQ5cnjjOmp
wtvD0A9A+uoG7hfEQFCxZzPDWa0k0saN5/a3pHMljk6fBHOiA4BRIN280k5YqMTy
shFdrN/5WB2jbFHrB2d6RKEWwN4CLE+6vejC57UiwoOacy/x7Myf2t9eI0g7M2Ov
HCHynnDt0Gb1PeYyXigJZTJrPWBxBk0bC2BoTU5DAdNslQgBmQo=
=HwTp
-----END PGP SIGNATURE-----

--------------obFPNKWhdX9qTpTJGxpuWr6d--
