Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EB8F84587AF
	for <lists+linux-man@lfdr.de>; Mon, 22 Nov 2021 02:09:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229884AbhKVBMa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 21 Nov 2021 20:12:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37240 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229594AbhKVBMa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 21 Nov 2021 20:12:30 -0500
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com [IPv6:2607:f8b0:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A81B4C061574
        for <linux-man@vger.kernel.org>; Sun, 21 Nov 2021 17:09:24 -0800 (PST)
Received: by mail-pl1-x630.google.com with SMTP id b11so12636635pld.12
        for <linux-man@vger.kernel.org>; Sun, 21 Nov 2021 17:09:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=nmCVUZfI05IKPm4ilewpDMzqBfEeyvVKsAbn2mNu0zM=;
        b=WfKHXgE8+1lrLzMpisraGHiBXxxCH4EHNhPKB4H29e3iSsB3AVEYvqOUSOpy7+RZTu
         gmjozc9k7j0uKwbzVGA+VkdE9PJ2+liW0/JkTWvcWNPEbP+K5lVmjdOfk7F7wNdWiWAW
         p1FEf6bGUT8PepbwjusIfUPma8a3GYDJSg3yRN+nWcOd1X+s/l/osr1TXKXvfHeuql8O
         HGAwrdiXM+EJSuvo1qvMMVrBRIEhz6MkGDMC822SBI3IQ++sAGOrFEve8F8ct6WZn3l/
         OjLYyqqAAMwtD+7fxNvsfLvWVW+v0A5kTlUMfN7Dn+tLeDDGJ6pCahr69ZU898LDgGqY
         MBew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=nmCVUZfI05IKPm4ilewpDMzqBfEeyvVKsAbn2mNu0zM=;
        b=yovFm0CIWq7AY/BhkR4cOsCfvx1wzdwcjl2HhhgnMvkrx3mPh4TXnazGMbpkQU1W7t
         yA6vJGPJykYYgLhb81sD9jAOYnEo7ZZXYFRT7H7I2CdZYCMVC4OlLakQu9dxQ56FeYjS
         Y2CO8QpWWvy+DKw2swkTDVvwwf2vUiwauFdTBDndnIM8fVhTRGeqWonGqa5CD15Bf28A
         Txn48t4icatGW6JfVdYLRJ9AnikOldmfJnPMCK+B4iGkddnQJlqsheZxPvyC2JUhj1iw
         eivxQF801q3PAhkM0PpQuYmxF4mSotAoY9vKXfFXaWdxd+yL3ewhRvfeNFZCRsJ8wlON
         Ix8w==
X-Gm-Message-State: AOAM531RVJ+iwMUoKc4ilwAgvGDPhZbTcewblyW6v+SMb/1SG72/7vnY
        d7CW28/74c4CgW+Lgk2YbP5PZxtjeDc=
X-Google-Smtp-Source: ABdhPJx4mAwie1UiWIEN7Se4u4ioyI6gZfcEnB+EhB5t1K3fVPP8sSbkuF+YwEtnlyALomUfalQ3Ig==
X-Received: by 2002:a17:90b:4c03:: with SMTP id na3mr26254458pjb.62.1637543364035;
        Sun, 21 Nov 2021 17:09:24 -0800 (PST)
Received: from localhost.localdomain ([1.145.87.11])
        by smtp.gmail.com with ESMTPSA id h1sm6686094pfi.168.2021.11.21.17.09.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Nov 2021 17:09:22 -0800 (PST)
Date:   Mon, 22 Nov 2021 12:09:18 +1100
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
Subject: Suppressing hyphenation (was: [PATCH] mctp.7: Add man page for Linux
 MCTP support)
Message-ID: <20211122010916.pxumhb5ejm5zw2c3@localhost.localdomain>
References: <20211014070519.2037226-1-jk@codeconstruct.com.au>
 <97962dba-3787-2cd2-bc96-63b009ce9af8@gmail.com>
 <e6a15bfbb2337b78c9e1305956e71cebd7b4328f.camel@codeconstruct.com.au>
 <20211018055719.i3rjz2brwqsygqrp@localhost.localdomain>
 <c454d2ed-a097-7a42-5300-e4c9775da421@gmail.com>
 <8cd4544c-e174-173a-fbaa-5c23f7c3788e@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="7ydvcjnadtgram3h"
Content-Disposition: inline
In-Reply-To: <8cd4544c-e174-173a-fbaa-5c23f7c3788e@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--7ydvcjnadtgram3h
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[Jeremy Kerr dropped from CC--I hope that's okay]

Hi Alex,

Getting back to this after a month...

At 2021-10-18T09:53:54+0200, Alejandro Colomar (man-pages) wrote:
> On 10/18/21 9:16 AM, Alejandro Colomar (man-pages) wrote:
> > > So we might write
> > >=20
> > > .B struct\~\%sockaddr_mctp
> >=20
> > Okay.
>=20
> Actually, wouldn't it be better to just write?:
>=20
> .B \%struct\~sockaddr_mctp
>=20
> This way \% applies to the whole (even if it was unnecessary for
> 'struct\~').

In fact it does not apply to the whole; '\~' still counts as a word
delimiter to groff even if it is not a permissible location for a
"break" (line break).

Before I bust out the long explanation, I'll try to present some short
advice for man page writers.

* If you wish to suppress hyphenation with the '\%' escape sequence,
  place it at the _beginning_ of each such word.  Except for special
  character escape sequences like '\-', '\(ha', and '\[aq]', most groff
  escape sequences act as word boundaries, so you may need to specify
  '\%' before each word in a series, as in '\%typedef\~int\~\%strsize'.

Now for the deeper dive.

As strange as it may seem, this is consistent with the behavior of
hyphenation when it encounters most other escape sequences[1] (most of
which a portable man page should not attempt to use).  The key factor to
consider in matters of hyphenation suppression is where the _word
boundaries_ are, not where white space appears.

By contrast, anything that formats a glyph for output generally _is_
part of a word.  But only glyphs that not part of natural language words
(in English, [A-Za-z]) are eligible for adjacent hyphenation.

Here's the documentation of '\%' (and '\:') from the Info documentation
of the forthcoming groff 1.23.0 release.

[[
 -- Escape: \%
 -- Escape: \:
     To tell GNU 'troff' how to hyphenate words as they occur in input,
     use the '\%' escape, also known as the "hyphenation character".
     Each instance within a word indicates to GNU 'troff' that the word
     may be hyphenated at that point, while prefixing a word with this
     escape prevents it from being otherwise hyphenated.  This mechanism
     affects only that occurrence of the word; to change the hyphenation
     of a word for the remainder of input processing, use the 'hw'
     request.

     GNU 'troff' regards the escapes '\X' and '\Y' as starting a word;
     that is, the '\%' escape in, say, '\X'...'\%foobar' or
     '\Y'...'\%foobar' no longer prevents hyphenation of 'foobar' but
     inserts a hyphenation point just prior to it; most likely this
     isn't what you want.  *Note Postprocessor Access::.

     The '\:' escape inserts a non-printing break point; that is, the
     word can break there, but the soft hyphen glyph (see below) is not
     written to the output if it does.  This escape is an input word
     boundary, so the remainder of the word is subject to hyphenation as
     normal.

     You can use '\:' and '\%' in combination to control breaking of a
     file name or URL or to permit hyphenation only after certain
     explicit hyphens within a word.

          The \%Lethbridge-Stewart-\:\%Sackville-Baggins divorce
          was, in retrospect, inevitable once the contents of
          \%/var/log/\:\%httpd/\:\%access_log on the family web
          server came to light, revealing visitors from Hogwarts.
]]

Here's a short shell script to tell you where your installed
version of groff will hyphenate words: it forces hyphenation to occur at
every possible location.

$ cat ~/bin/hyphen
#!/bin/sh

for W
do
    printf ".hy 4\n.ll 1u\n%s\n" "$W" | nroff -Wbreak | sed '/^$/d' \
        | tr -d '\n'
    echo
done

$ LC_ALL=3DC hyphen antidisestablishmentarianism 'struct\\~sockaddr'
an-tidis-es-tab-lish-men-tar-i-an-ism
struct\~sock-addr
$ LC_ALL=3DC hyphen sockaddr \\%sockaddr \\%sock\\%addr sock_addr sock^addr
sock-addr
sockaddr
sock-addr
sock_addr
sock^addr

(I set the locale so as to keep this email strictly "basic Latin", groff
will happily emit proper Unicode hyphens U+2010 to a supporting output
device.)

You can see from the above that we can't recklessly sprinkle '\%': apart
=66rom looking ugly, '\%' at the beginning of a word suppresses only
_automatic_ hyphenation.  If you specify it both at the beginning _and_
within a word, its other meaning of marking a hyphenation point is
still honored.

Regards,
Branden

[1] There are a few exceptions, like those which "don't produce an input
token" as the groff Texinfo manual puts it, a construction that is more
intelligible to the groff developer than the groff user.  These
have to do with escape sequences that change the way glyphs are
rendered, such as changes to the font style or family, type size, or
stroke or fill colors.  Most of these should never occur in portable man
pages and even '\f' is, in my view, better handled with man(7) font
style macros and the '\c' escape sequence if required for break
suppression.

--7ydvcjnadtgram3h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmGa7bQACgkQ0Z6cfXEm
bc4uVw//TXEsaWQybobSF17n1beE8gfqAEn1+kUJ6eN17b+kdLXb9hI0lCXehrfP
Hrg2dtW3DW3jqt5KgjPVyKfcj2kptkd372lX7Ia8fdPRp/q+ToOcbftgMvDjmAJC
7Di3Ijs3ESDdJ7Zisvp3Mt88dzKcZQ+mXQJp3CJRRq0pHhZw8L//RCmW+51UxWK9
7R/adpNsgoxkpLfEZlik7fwLIAUIfFjbIOo7AgdBe5f8cr40wYe1ZxsnEgRlD+Kj
vnR40HyR2Gaxs3px/wlBIe1GtZkChpdapeolYtTx69PwIRRaiiVSBRhiFiJIDYt0
auGJoNPq9EcDec8aolTsEt1sj5drA3kmWSxP6EleELHYLNTyiCEA+OZQqBtsnQVI
CU9N4PKtK7bAEuxLULEOuALI/yLCjB4V3pmfoMGjRhCMf5g2gSCrHirW1zeRG70o
zT9i21sAvBgeTAoBVq8PKPoyPg+vk/b3NSNnwgQqIRFbvV1eKKAMR1juuRr9m5C0
BgagaO389eiQtQfyrt4XisQYRUTNWyDJ09oX48K1bwgckgpOWcvLnCscTDAzPKRj
+K2TsC6fFHwnOeXP0q3mFZC56MfD9B4ymB3LGj6GFwSSKQdwYECYZUe5ySX8BCUc
c98z9TaXLI3vv7RBc6xoasKumXHrjlUAELglBS6B9ECzr4oAg6A=
=qlCv
-----END PGP SIGNATURE-----

--7ydvcjnadtgram3h--
