Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E040C596622
	for <lists+linux-man@lfdr.de>; Wed, 17 Aug 2022 01:47:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237703AbiHPXql (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 16 Aug 2022 19:46:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43248 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229675AbiHPXqk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 16 Aug 2022 19:46:40 -0400
Received: from mailx.courier-mta.com (mailx.courier-mta.com [96.56.228.18])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64A7E915C2
        for <linux-man@vger.kernel.org>; Tue, 16 Aug 2022 16:46:39 -0700 (PDT)
Received: from monster.email-scan.com (monster.email-scan.com [::ffff:192.168.0.2])
  (TLS: TLSv1.3,256bits,TLS_AES_256_GCM_SHA384)
  by www.courier-mta.com with ESMTPS
  id 00000000002A025B.0000000062FC2C5D.0000D81D; Tue, 16 Aug 2022 19:46:37 -0400
Received: from monster.email-scan.com (localhost [127.0.0.1])
  (IDENT: uid 1004)
  by monster.email-scan.com with UTF8SMTP
  id 000000000006027A.0000000062FC2C5D.0005AFA4; Tue, 16 Aug 2022 19:46:37 -0400
References: <YvZj6emfWNfwRjwe@asta-kit.de> <20220812221035.xd4udngmz5erht5p@illithid> <CM52T3SFTBDU.21XFDQOUZP886@grinningface> <Yvj/CAUSL1jVbAot@asta-kit.de> <cone.1660522834.354716.280603.1004@monster.email-scan.com> <YvuS8w3yYOuj9tWF@asta-kit.de>
Message-ID: <cone.1660693597.75726.370792.1004@monster.email-scan.com>
X-Mailer: http://www.courier-mta.org/cone/
From:   Sam Varshavchik <mrsam@courier-mta.com>
To:     Ingo Schwarze <schwarze@usta.de>
Cc:     DJ Chase <u9000@posteo.mx>, g.branden.robinson@gmail.com,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: Standardize roff
Date:   Tue, 16 Aug 2022 19:46:37 -0400
Mime-Version: 1.0
X-Mime-Autoconverted: from 8bit to quoted-printable by mimegpg
Content-Type: multipart/signed;
    boundary="=_monster.email-scan.com-370792-1660693597-0002";
    micalg=pgp-sha1; protocol="application/pgp-signature"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME GnuPG-signed message.  If you see this text, it means that
your E-mail or Usenet software does not support MIME signed messages.
The Internet standard for MIME PGP messages, RFC 2015, was published in 1996.
To open this message correctly you will need to install E-mail or Usenet
software that supports modern Internet standards.

--=_monster.email-scan.com-370792-1660693597-0002
Content-Type: text/plain; format=flowed; delsp=yes; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

Ingo Schwarze writes:

> Hi San,
>
> Sam Varshavchik wrote on Sun, Aug 14, 2022 at 08:20:34PM -0400:
> > Ingo Schwarze writes:
> >> DJ Chase wrote on Sat, Aug 13, 2022 at 05:27:34PM +0000:
>
> >>> Have we ever considered a de jure *roff standard?
>
> >> No, i think that would be pure madness given the amount of working
> >> time available in any of the roff projects.
>
> > I tinkered with something like this some years ago, but I took a slig=
htly
> > different approach.
> >
> > I converted man pages
>
> What kind of manual pages?

The ones that are the subject of discussions on linux-man@vger.kernel.org=
.

> > from 'roff source to Docbook XML using a =E2=80=A6 pretty large Perl =
script.
>
> That sounds very foolish on several levels.

Well, I had some free time the other day, and had nothing better to do.

> First, and most obviously, you seem to be duplicating esr@'s work
> on doclifter:
>
>   http://www.catb.org/~esr/doclifter/
>   https://gitlab.com/esr/doclifter/-/blob/master/doclifter

Seems so, except that I tailored my logic to man pages, and specifically =
to =20
the linux-man@vger.kernel.org manpages.

> Second, quick and dirty Perl-style parsing is usually not good
> enough to parse roff code, and a huge script is not particularly
> good for readability and maintainability.

Yes, arbitrary roff code will not fly very far. But something that's =20
tailored can produce productive results.

> Yes, i know the same resevations would apply to esr@'s work,
> which is a giant Python 3 script.  But at least there is some
> evidence that his work was able to find significant numbers of
> real issues in real manual pages.

Yes, there are plenty of issues there. I fed quite a few patches to Mr. =20
Kerrisk when he maintained them, based on my scripts chewing through them=
. =20
There were plenty of mismatched .nf/.fi, and other things of that sort.


> > Once a year, or so, when I have nothing better to do I pull the curre=
nt
> > man  page tarball and reconvert it. I usually need to tinker the Perl
> > script, here and there, each time.
> >
> > The Docbook folks provide a stylesheet that converts Docbook XML
> > back to 'roff.
>
> Yikes.  That thing is by far the worst man(7) code generator existing
> on this planet.  If at all possible, you should avoid that toolchain
> like the plague.

I do not view it as an authoritative source of man sources, but more of =20
backwards compatibility. I believe that for man pages, roff should've bee=
n =20
replaced by Docbook XML a long time ago.

That was really the original impetus for my Perl hacking: to see how =20
feasible it would be to convert the existing man pages to Docbook XML. My =20
end result showed that at least that it was doable; and I think that the =20
Docbook XML stylesheet for man pages would've been an acceptable way to g=
et =20
some roff source generated from Docbook XML that's shown by the man comma=
nd.

> > The end result you get is standardized 'roff, whatever that means.
>
> Absolutely not.  The result is utter crap.  It is rarely even
> syntactically valid, let alone reasonable style.

I should've used "consistent" instead of "standardized". Different man pa=
ges =20
from different sources use different ways of rendering the same content, =20
i.e. function names. Sometimes it's in bold. Sometimes it's in italic. =20
Sometimes it's something else. With consistent semantic markup a <functio=
n> =20
in every man page would've produced the same markup in the generated roff =20
source.



--=_monster.email-scan.com-370792-1660693597-0002
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEMWrVnbBKLOeG9ifkazpiviedvyUFAmL8LF0ACgkQazpivied
vyW9uxAAg//Y+21ZxpCFW0RJlfJznPAqWHXd4ZyK8F6yoKZUA7lHAVoRan6qHWEE
SPXhQebM+f6JjX2xgyBhXPH0dGMSDH3bPpsvHgMZlaNdAQsMbVKcAQw69D/QXfhB
QyoG2HLs/BhbYSSNEaH06FN/vihu3KixWjYFdsTp/xZdPHwaYVfuBhubihBEfK+m
AJqCP9g7PDq9Z202gst2Hfnfta68ElWPaKGRyt5OX9WjqtBpF0BVzAvtUEL6CFvg
Z7D10vo9JBwASoLF7Qy30aHTCMs+0IXbjQ0OTVUI+JzLVlX4q4OtzgEE2I5kfGKX
ZS+SNg35c7eidcuteDHkyvj+VsswLBpnmxUnNXZWRBEmveZwsMkDCZZPFVgu32vU
27jprZl6PUOauhHI5AeOMZnXlXMyUrBuQdKoaivFz06fVK1hvqMqDyhDEqtxLOwE
M5H7MS/CBXe1qNrHrT6U2/jdFUTjgfwgE28xlZAnnm576ZGMcuGsFEwFmngimIEy
3wi8bVa8foJ96hThJG7bKEw1uMSHmvpibpodY9j5bRmUXzdgGartMSIUGzt3eVFV
iFksMxjI+eaM3HvnE+X0Mwh6wGwCr9KBtUSxuBUKElR16JjmfqjqsbV/OqjV98Nv
KcHRZrOgPs/BXOu1JBPmajBphf8bDvbzE6JGcCfhk5jlZ1W192M=
=GDEx
-----END PGP SIGNATURE-----

--=_monster.email-scan.com-370792-1660693597-0002--
