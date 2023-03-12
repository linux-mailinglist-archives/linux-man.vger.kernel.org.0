Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8FE246B6901
	for <lists+linux-man@lfdr.de>; Sun, 12 Mar 2023 18:55:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230193AbjCLRzq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 12 Mar 2023 13:55:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60782 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230092AbjCLRzp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 12 Mar 2023 13:55:45 -0400
Received: from static.213-239-213-133.clients.your-server.de (luckmann.name [213.239.213.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 138A718165
        for <linux-man@vger.kernel.org>; Sun, 12 Mar 2023 10:55:43 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E54085.00000000640E121D.00003990; Sun, 12 Mar 2023 18:55:41 +0100
Date:   Sun, 12 Mar 2023 18:55:41 +0100
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page nfsservctl.2
Message-ID: <20230312175541.GA14646@Debian-50-lenny-64-minimal>
References: <20230311171355.GA4755@Debian-50-lenny-64-minimal>
 <730751cc-f526-2378-98ba-36834f4c5d8e@gmail.com>
 <20230312052333.GG7927@Debian-50-lenny-64-minimal>
 <20230312171115.qydvpsgivjsoyfg6@illithid>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-14736-1678643741-0001-2"
Content-Disposition: inline
In-Reply-To: <20230312171115.qydvpsgivjsoyfg6@illithid>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=0.1 required=5.0 tests=BAYES_00,CK_HELO_GENERIC,
        HELO_DYNAMIC_IPADDR,SPF_HELO_NONE,SPF_NONE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-14736-1678643741-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Branden,
On Sun, Mar 12, 2023 at 12:11:15PM -0500, G. Branden Robinson wrote:
> At 2023-03-12T06:23:33+0100, Helge Kreutzmann wrote:
> > Hello Alex,
> > On Sun, Mar 12, 2023 at 12:31:05AM +0100, Alejandro Colomar wrote:
> > > On 3/11/23 18:13, Helge Kreutzmann wrote:
> > > > Without further ado, the following was found:
> > > >=20
> > > > Issue:    mountd(8) =E2=86=92 B<mountd>(8)
> > >=20
> > > We don't use that formatting in example code.
> >=20
> > I think I saw it elsewhere, but then probably from one of our ~ 100
> > other projects.
> >=20
> > (And again, for hyperlinking etc. I think it can be helpful; I just
> > checked, even with formatting I can simply copy that code out - so
> > there is not disadvantage?)
>=20
> I don't have anything quantitative for you, but my impression from my
> own readings in software is that generally, in typeset material, code
> comments don't indulge in much style variation.  They might be set
> uniformly in a slanted face, or in proportional typeface where the code
> proper is monospaced, but not much beyond that.

No, the code does not show any URL.

When HTML output is generated, the tools detect the man page reference
and turn it into a hyperlink.

I think Mario (in CC) knows more about it.

So the only idea is to have those tools detect the man page reference.

Greetings

           Helge



--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-14736-1678643741-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmQOEhoACgkQQbqlJmgq
5nDKMBAAqBCequEVR5neCzJEF0cDsXEMA0ASJOpHfgjLK28ejNiFU81qEuzKTUg5
If1Ooik2Jwcv2keIyBP1olsbXSzd566+640u0rmwzLM9DwT9U93GSShFPu+YRS2Z
zk9tdR7vxWxrntXDqL2TO5G8cDkzyh6bEJqa3VzmkaYIdZmojSvdAnFLVlcDLCiC
ZinWtVVxmAM+CidZHTxepSmTqwQdoJ28TIlhPBbemhfnv/OsMy6qz0macg6/90zZ
18sYgFB5ua0LkWHCjn1T9B+S/qbQ/In92pDiGHu7ldz88B/Cn1wSXJV7XRUjorgg
9bjUSWZcJAX1rlzKX/OL70OE1vrFcwsFC+UuKcKt0vh4hr80Jm9feXAFKLNEk0Da
iulWxs3p+CKwgGumBIU5qI2Stvz30QAysozV7WMdrhMIXvGuFsExZR8HioL8vxyj
5ZtmBXg4Kq26K9zY93jhWV3gKPF9Ky3wG1l530lyTWw6uNaHNmLRKGgbGR0ar6KX
ykwvduckR+OmEzPnfHgTANRuPqeTn0g66u9Id5F/CAIGvQeBTJuZSCfFBsNr3r1O
NwDK2e7DVH3jYZGQVi3lLbbh0ylmejcqrw1mkqDY1BMIobaG7KnlraM8lhtxMSYY
H7kG8/REGlriZ/7UMhAedvBp3meJsXPi4xc+cwvWOsSm5wns718=
=Aurf
-----END PGP SIGNATURE-----

--=_luckmann.name-14736-1678643741-0001-2--
