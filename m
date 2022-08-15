Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 566C6592718
	for <lists+linux-man@lfdr.de>; Mon, 15 Aug 2022 02:31:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229543AbiHOAbn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 14 Aug 2022 20:31:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36806 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229496AbiHOAbl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 14 Aug 2022 20:31:41 -0400
X-Greylist: delayed 661 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sun, 14 Aug 2022 17:31:38 PDT
Received: from mailx.courier-mta.com (mailx.courier-mta.com [96.56.228.18])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B5B0210DB
        for <linux-man@vger.kernel.org>; Sun, 14 Aug 2022 17:31:38 -0700 (PDT)
Received: from monster.email-scan.com (monster.email-scan.com [::ffff:192.168.0.2])
  (TLS: TLSv1.3,256bits,TLS_AES_256_GCM_SHA384)
  by www.courier-mta.com with ESMTPS
  id 00000000002A0257.0000000062F99153.0000AC56; Sun, 14 Aug 2022 20:20:35 -0400
Received: from monster.email-scan.com (localhost [127.0.0.1])
  (IDENT: uid 1004)
  by monster.email-scan.com with UTF8SMTP
  id 000000000006028F.0000000062F99152.000448BD; Sun, 14 Aug 2022 20:20:34 -0400
References: <YvT6s2Sv+M2bEldp@asta-kit.de> <20220811201714.a2o432xhkyyyj6qi@illithid> <YvZj6emfWNfwRjwe@asta-kit.de> <20220812221035.xd4udngmz5erht5p@illithid> <CM52T3SFTBDU.21XFDQOUZP886@grinningface> <Yvj/CAUSL1jVbAot@asta-kit.de>
Message-ID: <cone.1660522834.354716.280603.1004@monster.email-scan.com>
X-Mailer: http://www.courier-mta.org/cone/
From:   Sam Varshavchik <mrsam@courier-mta.com>
To:     Ingo Schwarze <schwarze@usta.de>
Cc:     DJ Chase <u9000@posteo.mx>, g.branden.robinson@gmail.com,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: Standardize roff (was: *roff `\~` support)
Date:   Sun, 14 Aug 2022 20:20:34 -0400
Mime-Version: 1.0
X-Mime-Autoconverted: from 8bit to quoted-printable by mimegpg
Content-Type: multipart/signed;
    boundary="=_monster.email-scan.com-280603-1660522834-0001";
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

--=_monster.email-scan.com-280603-1660522834-0001
Content-Type: text/plain; format=flowed; delsp=yes; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

Ingo Schwarze writes:

> Hi,
>
> DJ Chase wrote on Sat, Aug 13, 2022 at 05:27:34PM +0000:
>
> > Have we ever considered a de jure *roff standard?
>
> No, i think that would be pure madness given the amount of working
> time available in any of the roff projects.
>
> I expect the amount of effort required to be significantly larger
> than the amount of effort that would be required for rewriting
> the entire groff documentation from scratch because:

I tinkered with something like this some years ago, but I took a slightly =20
different approach.

I converted man pages from 'roff source to Docbook XML using a =E2=80=A6 =
pretty =20
large Perl script.

Once a year, or so, when I have nothing better to do I pull the current m=
an =20
page tarball and reconvert it. I usually need to tinker the Perl script, =20
here and there, each time.

The Docbook folks provide a stylesheet that converts Docbook XML back to =20
'roff. The end result you get is standardized 'roff, whatever that means.

But, yes, the effort require to clean up and standardize the formatting
of man pages would be mammoth. There's more inconsistency across the
various man pages, from various sources, than consistency.


--=_monster.email-scan.com-280603-1660522834-0001
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEMWrVnbBKLOeG9ifkazpiviedvyUFAmL5kVIACgkQazpivied
vyVpmRAAqY3w48LzJ5GerdGtePhBY4wfcWQ6SNG7JjZaVdEkZx273fdidzG72aTd
em8brCfuVkqlwgz3QQYwToyXt4kqXcitqvoVOZxpKIObtlorMRqOK9t0ZdOBkXwE
Lv+FoNfu4JNe7pQMwHenOvBfRwIeEDkajGvlEIDokoLWO+sQeKBxRbGclkqh1K9c
/1t4wDVAh5Soq7gX0tMizT6SSY+g0mhrsLFhWMjpU627x4ZQiNAhJiqviZNRTDHs
TGRqapSnd6YihjZsYZL0iPaw2mE0dMZiozDxMs9gO+Wq/Im13AV/yKKjvMSVVtoN
vmjSxMWYaXy3mCQvzkQIIKosvQmvqbvRxuySreEdCoaTSDi0yXua53YxH8XtmtYa
YxnkqIG6/gojy9KohTC3lo/PdowSunXKQQBR19Y0xDXVKIfSks8+A/cRUPMTiPJH
D7mx7c6eig+iyCh1PdcBb+kgV3EtQjzfCN8x9JM7k2PinYSmmH2xmuDPxxpMcga1
LQ00TeEnlg816vxzzcNuKuo2AG/RofhAdQNEwxsDmBWFnT/+N6NZGQZTQIBn/w2T
grJRuAx6v4o6MZ85GCzE3GbId3JhxXNDv1DXjyFpvSrqSaj9WJKzvqOevGSJAIEl
7/cCfQHFGbcVOKCd1RY7EINfPgfS3ww9OZhiPjfKPE+ifNidVvE=
=oFca
-----END PGP SIGNATURE-----

--=_monster.email-scan.com-280603-1660522834-0001--
