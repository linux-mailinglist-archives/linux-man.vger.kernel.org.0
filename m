Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 67989624D9E
	for <lists+linux-man@lfdr.de>; Thu, 10 Nov 2022 23:25:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231392AbiKJWZr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Nov 2022 17:25:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40382 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231426AbiKJWZp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Nov 2022 17:25:45 -0500
Received: from mail-oa1-x34.google.com (mail-oa1-x34.google.com [IPv6:2001:4860:4864:20::34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30BCA56554
        for <linux-man@vger.kernel.org>; Thu, 10 Nov 2022 14:25:44 -0800 (PST)
Received: by mail-oa1-x34.google.com with SMTP id 586e51a60fabf-13c569e5ff5so3715643fac.6
        for <linux-man@vger.kernel.org>; Thu, 10 Nov 2022 14:25:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wD2v+AOJczUNd1nKk5H33X/bP9FvhLVGOEJelKuwtig=;
        b=IW0KA/ChiFe/Rj9otmE5UFDoXLstVS695RR/Y0CukDRkwPPosq1LJ0b85b99j9nlfz
         +9KcP0n+w925NKWHw6Sg85TSY0gaT57sKAz+CAkroZnukj8w7gTvW8ilCf2nXESNU+BN
         JcgDBCO6hlIz+1mDWdYyHmBG3kXhUqnW0KBNSdZgkagf5GhJFzHcA5FtD4oMLkrAixeT
         6SZEowF2Ab9Q9B20AVUqi0o2o991+Ekx3tMPY6HV0lZzvdNp8aWNm/o0sxzXpiu4rETb
         YaCq56c6FDF4/vmNj3LtHCoGQ53YchumdK05axhbqxD0gStdBmPgcb4m7de9ge6OfdiC
         6zvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wD2v+AOJczUNd1nKk5H33X/bP9FvhLVGOEJelKuwtig=;
        b=d40uqX892372ZirisZSdjGNvOahx8+K4A9czjU85oPP9yRrq7zc3BvhB3Rp76UqaMa
         JNh0G16HttA0RwnUQbD00bjdGnA8+o0d7r6LhTTLw1zlI6f10Z/TOhmg0iYO88G9m88j
         trRfR/viHk81UUCrkcn6Dnrjk1gBowEb5tAltz3irkrEmfUwqN515rxcVZCKhplnJK0C
         eNHY90wkP5XHtJTpx7QkWy+FmvhYr2xZxHRnlbpGGe5ggJm4kF4IqT57yMPKaRUOXcrd
         3UPR3foq/igw97C80rrm4oUJ8yIrBv49985PzP+wkmikEmRynoxVeG5/W6OfbGSOIcjz
         IdVg==
X-Gm-Message-State: ACrzQf3+xel10uEwnpywigDjS+KWB9U/wv5rpxielJ8h2bPiTsqM5PJz
        rJ0jbDN3ALkI6b3CwxsYJcR4A4Op3ev4pw==
X-Google-Smtp-Source: AMsMyM4We+jjFN8KnjTSSs8Hw9TVyEFqjvVX0Typb/z+1leQe2n0e04tIBncERiG2NCcQLUUKu8VwQ==
X-Received: by 2002:a05:6870:7c11:b0:13a:fa65:3e64 with SMTP id je17-20020a0568707c1100b0013afa653e64mr2301377oab.55.1668119143453;
        Thu, 10 Nov 2022 14:25:43 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id s14-20020a4ac80e000000b0049eb2793516sm223254ooq.44.2022.11.10.14.25.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Nov 2022 14:25:42 -0800 (PST)
Date:   Thu, 10 Nov 2022 16:25:40 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Martin Uecker <uecker@tugraz.at>, Ingo Schwarze <schwarze@usta.de>,
        JeanHeyd Meneide <wg14@soasis.org>, linux-man@vger.kernel.org,
        gcc@gcc.gnu.org
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
Message-ID: <20221110222540.as3jrjdzxsnot3zm@illithid>
References: <491a930d-47eb-7c86-c0c4-25eef4ac0be0@gmail.com>
 <2abccaa2-d472-4c5b-aea6-7a2dddd665da@gmail.com>
 <4475b350c2a4d60da540c0f3055f466640e6c409.camel@tugraz.at>
 <fcf6f3f7-f61d-9b91-bfeb-370849439ce3@gmail.com>
 <d524528c29f806b763a2d394abc1241f6b2dc0cb.camel@tugraz.at>
 <51f5a2f2-84c1-bc75-cf94-0cdc1771d37f@gmail.com>
 <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at>
 <e9ba79ff-fb73-c4d4-b966-d8d15062f7b7@gmail.com>
 <20221110094033.ptpfsqpvvx2yd5xs@illithid>
 <8cca79d4-f31d-1508-0775-cef54e3755c1@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="q3k274hbxgf2fi4m"
Content-Disposition: inline
In-Reply-To: <8cca79d4-f31d-1508-0775-cef54e3755c1@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--q3k274hbxgf2fi4m
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2022-11-10T11:59:02+0100, Alejandro Colomar wrote:
> > You know what Moltke said about plans and contact with the enemy.
> > For one thing, I think the Linux kernel will move too fast to permit
> > such a leisurely cadence.
>=20
> Heh, at this point, I burnt my ships, by using enhanced VLA syntax.
> If I release that before GCC, I'm expecting to see an avalanche of
> reports about it (and I also expect that GCC and forums will receive a
> similar ammount).  So yes, I expect to wait some longish time.

Hah, you rebutted my Moltke with your namesake.  You understand that I'm
obligated to spring a reference to the Battle of Lepanto or something on
you at some point.

> > Also, as soon as Bertrand and I can get groff 1.23 out[1], I am
> > hoping you will, shortly thereafter, migrate to the new `MR` macro.
>=20
> Not as soon as it gets released, because I expect (at least a decent
> amount of) contributors to be able to read the pages to which they
> contribute to,

Laggardly adopters can always put this in man.local.

=2Eif !d MR \{\
=2E  de MR
=2E    IR \\$1 (\\$2)\\$3
=2E  .
=2E\}

> but as soon as it makes it into Debian stable, yes, that's in my
> plans.  So, if you make it before the freeze, that means around a
> couple of months from now.

Yes.  It is a major personal goal to get groff 1.23 into Debian
bookworm.

> > <tents fingers, laughs villainously>
>=20
> <also tents fingers, laughs villainously>

https://www.youtube.com/watch?v=3DVhH2egTLohM

Regards,
Branden

--q3k274hbxgf2fi4m
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmNtelsACgkQ0Z6cfXEm
bc6BPQ/7BJYiTVhzogybxhg7h2VYmFeu9a9RQsiyNwdYvpyWw1k3eBOpxNe7vL+N
vs4/JkYruz0IS6P5l+OKvkfkigqncxNiqGPiXv0n5in398E0T87wRUZYI+X4/It+
6WBNaqzl7b8Afs7oCOK3VnPn7tpfW2EO0kjmuUSt0Cl1dvDYIYTawCaRjoez/d9U
L0iPc3mhZLeuVX3FR+1b7k8Xo+336JeniKQu6jQObpbjNT5sgcgiG2tSEOrRoMvw
6RFpKgUt2NnbrW/WT3AFnVRZHWPL62PsnrAb4LBqwBqvQIP8DYMkgL9oWXtsdBvG
+uKtjG15Stb2bpgd3AV10hRbvzgExfM8CpuD7zWPpSwCt7vwq4uDXEOAqtYaYrM4
7cVT9WJvHEBE0slwUAXIcnuFuelnErc0gWJnxLvyWw/NrPLQo51loDcuK5/IaNt2
L3ZntYDTcW3GTT3V7zc/k/SLTxUMb0KO83e3IdPbRx7i1AXFq5mrTFiWhDULvTST
qKC2ugJVY8kbdyr+PmnMEd77cQpt6chR/0TgMu26vcqIWCKUv3iXCM43rT0PdOfR
mf8nwkzmMD7Mm+V+0CUl8i6NLaEQfqN5VFzxyTjGinPVDF2kBB7gLbbVtkiy5H9R
5wQyTwUYmkv9YawLOLvIMtkTe6YHdzVqEDP2rwj9DJQrTkKryWw=
=ds+I
-----END PGP SIGNATURE-----

--q3k274hbxgf2fi4m--
