Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 70DD87D8B56
	for <lists+linux-man@lfdr.de>; Fri, 27 Oct 2023 00:03:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230089AbjJZWDB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 26 Oct 2023 18:03:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39798 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232210AbjJZWDB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 26 Oct 2023 18:03:01 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D88B91
        for <linux-man@vger.kernel.org>; Thu, 26 Oct 2023 15:02:59 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 26615C433C9;
        Thu, 26 Oct 2023 22:02:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698357779;
        bh=0ZXAWNBzfso8S0j6bmz4jTUl0JffIU96i1TgHFiol3Q=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=r1Zyt7zZPyuG18eR5Kc68T+ywhsZSQGMzunuToqWwclgTxJSxbU/BJqluZ3sS820T
         +HCZwYwswdmNbREOsrUsRDZRqMM7PB57oFT+LR9vm9xjbzJoSiMYnkOWsnGXPr4plf
         OjYiDXWahFNoG91pW6PM4pHkI1SipI8WbzZYoE9cVPs5bokvXLbJyjHpqUos7hceqf
         IpjvkoVYrrM5BxNz5qZAvtoPCVb+bSaI7AWMe3bFyT5dLYeAbBdoDNRdGXW4g97qnG
         KZ+Z/4e+k7p0N5EIg9Cx1VHXfYNLelizyAmQbznExnxiFT9ibGGMQ5ukuf5o+E7v/x
         hzLjkAnwh7bcA==
Date:   Fri, 27 Oct 2023 00:02:55 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: Why does man(7) have 3 paragraph macros for the same thing?
 (was: `\c`, mdoc(7), and man(7) extension macros)
Message-ID: <ZTriD3VEgZMcRsY6@debian>
References: <20231025185424.txreg7q47zigo24j@illithid>
 <ZTlu2r8N3nrCnMpa@debian>
 <20231026125835.phpfjhz6xbsde33d@illithid>
 <ZTpz3A0yijoxDvip@debian>
 <20231026145140.qyl4lsfhp3644hmh@illithid>
 <ZTp-hZTj7cmKMlXb@debian>
 <20231026152813.6jziefb3umfmshb4@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="6IUH6n0Aqmnqt9M9"
Content-Disposition: inline
In-Reply-To: <20231026152813.6jziefb3umfmshb4@illithid>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--6IUH6n0Aqmnqt9M9
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 27 Oct 2023 00:02:55 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: Why does man(7) have 3 paragraph macros for the same thing?
 (was: `\c`, mdoc(7), and man(7) extension macros)

Hi Branden,

On Thu, Oct 26, 2023 at 10:28:13AM -0500, G. Branden Robinson wrote:
> At 2023-10-26T16:58:13+0200, Alejandro Colomar wrote:
> > On Thu, Oct 26, 2023 at 09:51:40AM -0500, G. Branden Robinson wrote:
> > > At 2023-10-26T16:12:36+0200, Alejandro Colomar wrote:
> > > > Regarding PP, LP, and P, what's the history of them?  Why do we
> > > > have the 3?  I'm willing to reduce them to just one.
> > >=20
> > > I invite Doug McIlroy to go on record, but my surmise is that they
> > > were introduced as crutches for people already familiar with ms(7).
> > >=20
> > > Doug's original man(7) (1979) didn't have `P`.  But Unix System III
> > > added it in 1980, and 4.3BSD followed suit in 1986.  This
> > > information is in groff_man(7).
> >=20
> > Was the original PP?
>=20
> It had both `PP` and `LP`.  I reckon Doug figured ms(7) veterans would
> have an unreformable habit of typing one or the other.
>=20
> https://minnie.tuhs.org/cgi-bin/utree.pl?file=3DV7/usr/man/man7/man.7
>=20
> I'd have been sterner--and probably less fondly remembered by my peers.
>=20
> (While I'm armchair quarterbacking Doug's plays of 45 years ago, oh, how
> I wish he hadn't have used input traps for anything in man(7).[1])
>=20
> > Still, compatibility with ms(7) would make it slightly easier to
> > trasnfer learning from man(7) to ms(7), would one learn it.  I know
> > many other macros are incompatible in bad ways, but the less the
> > better, no?
>=20
> That's true, but these days the knowledge transfer is, I submit, vastly
> more likely to go the other way; that is, people will be exposed to
> man(7) as their first roff macro language, and might decide to pick up
> ms(7).
>=20
> At that point, they'd have to learn that `LP` and `PP` do _different_
> things.  I think it's actually better if they _don't_ have to unlearn
> the "fact" (applicable only to man(7)) that they are exactly the same.
>=20
> Better, I believe, to promote only `P` in man(7).  Anyone wanting to
> pick up mm(7) will still enjoy some knowledge transfer.  Without
> arguments, `P` in mm(7) "does what you mean".

Yep; since PP is different in the languages, not using it here will be
better.  So, I'll soon s/PP/P/

Cheers,
Alex

>=20
> (I will not elaborate here on what that means; see the groff_mm(7) man
> page in groff 1.23.0 and please God not an earlier version.)
>=20
> Regards,
> Branden
>=20
> [1] In practice, nearly no one took them up for any purpose except the
>     one place you _had_ to use them: `TP`.



--=20
<https://www.alejandro-colomar.es/>

--6IUH6n0Aqmnqt9M9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmU64g8ACgkQnowa+77/
2zKl2RAAmdOzBj8EEKRz4XgFZdGPTytTfimKOBIT8wr6DhjsAVF9ScCX+CtTPlmN
ef3J+DryIMdoYkd5Ube8Es2mgaC7a/VtWamTWMRrDhr4cJy5pw5GgVd6xyMRlKWI
Q5d07i7ZRT19VIA/1N3I/Nrcj3bTuZUIYEQFKaNIiX2VxeXz3UW8qbdbKsRgRl2P
bCIB9AQAEcBaN77gdFyMdknHDfGjDyfnfCWft/hluiuCM+cWYknUEj5GzH9zMcmK
5F7eGsrCZNMB6dMEo1lttwQi0RV9Qa+rkVQVAwy+qNexeA/fccdbKyImXaQ5YYVh
rdRQE1Ici5ZXwAhtFaJyauuF/Bi2+Bfpo0GY3/4bufKqREYPFUmbCeLFLnkuyOQh
S+T0TQ2QkYRoMxh0j6lJ31mYe+l2uPOxB9oQ53G5qNenaswrwCIsQ7lxPyMBrz37
YSF2yDfS0TqlAO1IdcHfwiKWmhKATdmoM9Ac1ay0fe59SznR7BglCKrbotnz6zg+
Mbt2ntYqGB4LFvdfOlloM9IIRP2irdRLwcoqFyg7nPwqiFD9sihBpEWeHmnp9Iby
xBS/rW1AvrBEcnEDEcwxEOF1/YV8PZo6lvXZ6SQYR8AQ6d8IFQ1VgAWmdgYjeXwu
hdrqpr3TJNkwN4TlC7k40F1Ka2zFlRaeZaNX+JH1Qxd6fYDeURI=
=C+Lz
-----END PGP SIGNATURE-----

--6IUH6n0Aqmnqt9M9--
