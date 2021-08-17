Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A02343EED97
	for <lists+linux-man@lfdr.de>; Tue, 17 Aug 2021 15:41:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237642AbhHQNmU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 17 Aug 2021 09:42:20 -0400
Received: from luckmann.name ([213.239.213.133]:49723 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S239790AbhHQNmJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 17 Aug 2021 09:42:09 -0400
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000BD4002.00000000611BBC71.000031BE; Tue, 17 Aug 2021 15:41:05 +0200
Date:   Tue, 17 Aug 2021 15:41:05 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     Jakub Wilk <jwilk@jwilk.net>, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: signal.2
Message-ID: <20210817134104.GC12220@Debian-50-lenny-64-minimal>
References: <20210725170929.GA16841@Debian-50-lenny-64-minimal>
 <CAKgNAki+-u-7MY8pD5WB95ss_0_f=2B4zk7HnckxNDD6mD=UDA@mail.gmail.com>
 <20210727190315.i55sv2pap6ffhkuv@jwilk.net>
 <fc7d02d0-7fd8-0ed9-d1a8-9156240b177a@gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-12734-1629207665-0001-2"
Content-Disposition: inline
In-Reply-To: <fc7d02d0-7fd8-0ed9-d1a8-9156240b177a@gmail.com>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-12734-1629207665-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Michael,
On Tue, Aug 10, 2021 at 03:46:23AM +0200, Michael Kerrisk (man-pages) wrote:
> On 7/27/21 9:03 PM, Jakub Wilk wrote:
> > * Michael Kerrisk <mtk.manpages@gmail.com>, 2021-07-25, 23:02:
> >>> Man page: signal.2
> >>> Issue: Such paragraphs shouldn't be no-wrap
> >>>
> >>> "B<WARNING>:\n"
> >>> " the behavior of\n"
> >>> "B<signal>()\n"
> >>> "varies across UNIX versions,\n"
> >>> "and has also varied historically across different versions of Linux.=
\n"
> >>> "B<Avoid its use>: use\n"
> >>> "B<sigaction>(2)\n"
> >>> "instead.\n"
> >>> "See I<Portability> below.\n"
> >>
> >> I don't understand this report, and can't see a problem. Please=20
> >> elaborate.
> >=20
> > I think the problem is that the spurious space before "the behavior" is=
=20
> > confusing po4a.
>=20
> Thanks, Jakub. I fixed that.

Thanks for fixing.

I'm not sure if this is the cause, but there are lots of forced line
breaks ("the \n") in this paragraph, which is quite unusual.

I look at the next version on this again, and might come back, but for
now consider this one fixed.

Greetings

            Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-12734-1629207665-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmEbvHAACgkQQbqlJmgq
5nC9lRAAh29jnb59UwSqLcIntB7wvh5zPstVY3HOn5IME2EuBXE80P1xqWY0MBY9
GOcKjZGAzu5xuy3mPekR6aNO/UR6kr640psemuXZcsXm7242eYUJTp6wcNIE3l4w
1trr6397AXhHDfwgFVcXfuzQ3WGJlSqmwZwJ1IvCtAhKGmKfBhjEJbse06moXHZ+
J6G3Ed0FXLGh62xhdIRuACpWVCTBXgl6fZji8nMJW1vT4VAzCcCden8R45D8FlLl
Y+X8RHoHYa/98aoTeOh7m/Ew/KXBAEiP/q61IVVIs9eb1ABLQ4ho2rsW1odVPQC7
BBrImD25qMjkYqk31nDuUqk1TTP++4Rg+Fj6qfc67fwMb+V9/Lwj0DnJibwGputY
f5FePNG2Fyh5UYmFxm4g2YzF9+HIMVazlGiAGc8b1/d5yN3J1PD7aiFP0ppbLmuH
iyl0m3PhFRQuSeCV2SW165ZQSrYltGRi95daHkE7dZlCPv55JOHdopW4Y9Y+P+ZP
BlRJLQDUYS07reZt4hbQca6qCquffsZBbGW1bfyoNIJrYAAxQ6QF8ayeRNcu8Yk0
nMw6+7nqD2rRTc2CtdD9oB03QPwDl4B++JtxfE9YXEmFEp1Ak/dn5pSZkkxqGhrz
1hBfBPTydhhU0kv0QVgAH6ZOdganCNDgTktAVQQoZzcqMKYchY0=
=b4ru
-----END PGP SIGNATURE-----

--=_luckmann.name-12734-1629207665-0001-2--
