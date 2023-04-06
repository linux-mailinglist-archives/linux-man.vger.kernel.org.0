Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 75F596D8CC1
	for <lists+linux-man@lfdr.de>; Thu,  6 Apr 2023 03:32:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233128AbjDFBcM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 5 Apr 2023 21:32:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35856 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230144AbjDFBcM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 5 Apr 2023 21:32:12 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C053D198D
        for <linux-man@vger.kernel.org>; Wed,  5 Apr 2023 18:32:10 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id i9so37965879wrp.3
        for <linux-man@vger.kernel.org>; Wed, 05 Apr 2023 18:32:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680744729; x=1683336729;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RAhPAOjEqrHUyULl6D94HRSU9kvk+30gNkxgDdMGjd8=;
        b=J1kffIrGA5n3gUKv2Obo1HbUvAeCQ/b5FzTO1w67B8+mmm5EJ+rtFBGt/ZwreN5/jL
         n1FV4e1GDghr2r/USPLOF/PY3zQ94GRH78+dDW76w40Z2Zd+Bz01QVmxXHxhLE4H9Z2y
         b1TK0ZPg7XMGj8r8QLHanshO+Pe78wcviD1ktnl7SIHE0jUrc89k6TQf8TwCmkRRPilk
         5vfppujUNPFLklMkdf+BAqJ0Jzw16pIK2xsgXmEWdlNNxMSee++irQEYZRTDHZPH9PFe
         Wwl1shBSgUnX3ym1XvVnwy9CNwpK/HlLqAh+nlI01XzXRW6rfVC8W+wVzPrT9+CQ6DjZ
         atRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680744729; x=1683336729;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=RAhPAOjEqrHUyULl6D94HRSU9kvk+30gNkxgDdMGjd8=;
        b=hkvqd7eUyfzh80Kx6oVCpQZtniHLPxlT9qiOS8pT6NFGe13YFa3TO1vMbrt/sCajr6
         H01Yp8zo+rCFWipPdJN0q0LkCiewa/q6+OBxFMImmU7heyBUqM1MytIi4Ffd5AIRhhYy
         zPyyDburTt9DHJct9RgWF6QkxzwzPj5N/a/kbwfsOZ4bGnexLX28eck+zUj44nwuusLD
         /C5+qhqe8Of3YXWslPnRiSq/ajYq0MFtZRbJTIH1fw8eFm4TKbemJ19gleuuUFRLzOPm
         4K2TC7QqrcPPmcbPuv+DdbCtUzFAC9iyoNPIDFOdZyYPhsBZ5DhY0cYEkHBK8LszRaGZ
         rKsg==
X-Gm-Message-State: AAQBX9fjdvGw8mIASM3hOsJaMl//oFsWNJufDeQfVsCZj5dZNBNTZOKi
        +JMMtHwzdbzFOLIedXUcdAuZa3Ex+6I=
X-Google-Smtp-Source: AKy350by81nAATj4ge5DnTEkZJKsUXfXV1eUi3UGLLq/o3Gfq+6cmBTjpwFpixT5KWNu+Cv6D5iTkA==
X-Received: by 2002:a5d:48c6:0:b0:2d8:81a9:4d75 with SMTP id p6-20020a5d48c6000000b002d881a94d75mr4781698wrs.32.1680744728971;
        Wed, 05 Apr 2023 18:32:08 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id s8-20020a05600c45c800b003ef6bc71cccsm3792897wmo.27.2023.04.05.18.32.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Apr 2023 18:32:08 -0700 (PDT)
Message-ID: <8d828572-cdcc-8b19-d5d4-1256831d7183@gmail.com>
Date:   Thu, 6 Apr 2023 03:31:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: Playground pager lsp(1)
Content-Language: en-US
To:     Dirk Gouders <dirk@gouders.net>
Cc:     linux-man@vger.kernel.org, help-texinfo@gnu.org
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com> <ghedoy8x5y.fsf@gouders.net>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <ghedoy8x5y.fsf@gouders.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------rBpVZLHUK3nDIe7sxsLzibYl"
X-Spam-Status: No, score=-1.6 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------rBpVZLHUK3nDIe7sxsLzibYl
Content-Type: multipart/mixed; boundary="------------y2caPcStHET0SRJaeeefp0B3";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Dirk Gouders <dirk@gouders.net>
Cc: linux-man@vger.kernel.org, help-texinfo@gnu.org
Message-ID: <8d828572-cdcc-8b19-d5d4-1256831d7183@gmail.com>
Subject: Re: Playground pager lsp(1)
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com> <ghedoy8x5y.fsf@gouders.net>
In-Reply-To: <ghedoy8x5y.fsf@gouders.net>

--------------y2caPcStHET0SRJaeeefp0B3
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Dirk,

On 4/5/23 12:02, Dirk Gouders wrote:
> Hi Alex,
>=20
>>> first of all, chances are that you consider this post as spam, becaus=
e
>>> this list is about linux manual pages and not pagers.
>>
>> No, I don't.
>=20
> that's fine, thank you for taking the time give me feedback.
>=20

:)

> If you want to take a look at it: there is a branch "next" which you
> might prefer as it closer resembles my current work.  There is a new
> toggle "-V" that can be used to completely turn off validation.
>=20
> I tried to assemble a Makefile that might work without a configure
> script and attach it to the end.  A prefix /usr is the default value, i=
f
> your system prefers /usr/local you can use `make prefix=3D/usr/local

The default prefix in GNU should be /usr/local
<https://www.gnu.org/prep/standards/html_node/Directory-Variables.html>

> install`.  I hope I prepared some reasonable Makefile...

I'll have a look.

>=20
> Concerning meson.build: I decided to have a look at meson as the
> autobuild tool for lsp.  I am just gathering experiences with it and if=

> you have meson(1) installed you could use thes steps to (un)install lsp=
:
>=20
> $ # cd to lsp directory
> $ meson setup --prefix=3D/usr builddir ; cd builddir
> $ ninja install # or uninstall

>> If it's the first, how do you handle exit(1)?  Is it a reference, or i=
s it
>> just code (with the meaning exit(EXIT_FAILURE))?
>=20
> exit(1) gets recognized as a possible reference but validation will fai=
l.

`man 'exit(1)'` works for me.  It brings the exit(1posix) page, from
manpages-posix.


> No, broken references aren't marked.  Usually those unavailable
> references make sense, e.g. if a manual page references some program
> that not everyone uses.
>=20
> One example that I couldn't resolve so far is a reference to
> getconf(1) for example in fpatchconf(3).  Up to now I was not able to
> find out which package contains getconf(1)...

$ apt-file find /getconf.1
glibc-source: /usr/src/glibc/debian/local/manpages/getconf.1
libc-bin: /usr/share/man/man1/getconf.1.gz
manpages-fr: /usr/share/man/fr/man1/getconf.1.gz

It's in libc-bin.

BTW, did you mean fpathconf(3)?

>=20
>>>
>>>        =E2=80=A2   In windowing environments lsp does complete resize=
s when windows
>>>            get resized. This means it also reloads the manual page to=
 fit the
>>>            new window size.
>>
>> Good.  This I miss it in less(1) often.  Not sure if they had any stro=
ng
>> reason to not support that.
>=20
> Unfortunately, info(1) also doesn't do full resizes (on my system).
>=20
>>>
>>>        =E2=80=A2   Search for manual pages using apropos(1); in the c=
urrent most basic
>>>            form it lists all known manual pages ready for text search=
 and
>>>            visiting referenced manual pages.
>>
>> What does it bring that `apropos * | less` can't do?  If you're going =
the
>> of info(1) with full-blown system, it seems reasonable, but I never re=
ally
>> liked all that if it's just a new terminal and a command away from me.=

>=20
> You get a pseudo-file from where you can reach any manual page on the
> system.  Originally I thought this to help novice users but since lsp i=
s
> my system's PAGER I use it more often than expected.  I'm missing the
> ability to give keywords to apropos but that's just a matter of time to=

> get fixed.

I guess that's a matter of preferring navigation in some interactive
program (to me, info(1) style), vs standalone simple commands where you
first find what you want, then run it.

I don't find that magic much more comfortable than

$ apropos sysctl
=2E.. oh, I find many freebsd pages, let's grep them out ...
$ apropos sysctl | grep -v freebsd
=2E.. hmm, let's see system ...
$ apropos system | grep -v freebsd
=2E.. okay, now this shows a lot of stuff, let's remove man1 ...
$ apropos system | grep -v -e freebsd -e '(1'
=2E.. I don't want systemd either ...
$ apropos system | grep -v -e freebsd -e '(1' -e systemd
=2E.. let's sort by section and navigate through that list ...
$ apropos system | grep -v -e freebsd -e '(1' -e systemd | sort -k2 | les=
s

Find some pages that may be interesting, note them down, and open
them one by one, in different tabs, until I find I wanted to read
proc(5), and close everything else.

Which brings us to a valid point Eli raised.  Some pages are an
unreadable mess, and I think proc(5) is one of those that needs
a big split into smaller pages such as proc_pid_attr(5).

Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------y2caPcStHET0SRJaeeefp0B3--

--------------rBpVZLHUK3nDIe7sxsLzibYl
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQuIQMACgkQnowa+77/
2zIMPQ//Vgy+3n5TTEbQ8prHYEN7/aa8gjbsrew1hKXIFL+Y27o/JWfIhizkgDRn
0NHVdillXfKah6Zo8qGJp+8PH7FE28PC4SbtvHLdN4jJ9sJSc5ge/vBEDR1m9HDa
/xTiE/n9Dtlo4UeEGv9VmzKqe/RrIcGn+4/wH+oFnCn0uDHTiKRFhG4ESiDlPvrL
ylTptn4qoNGpisQ1AbzytU7kT1dEj1JvhZyLrBZnQUOXkyxPWtNDhr4tXYvCgKBi
rdDP6RU64Smmh9NZ5SqcXHKSDso4fYvGOxtbiBAPW95s6n6OdBuKN6LpMt/1tcvd
MFUcv1+ZVwV51j2VYGV9TQyLKO6uDDLnsRbumiAZEZEbm7cZVsaYKJoXZKQ5zK2h
pJeoio7+hlCje1HwvVt+UeM7CgRmiuKQxgt5Zp5jqr67Y3afaC2yR+7EdyPSwDxF
W+E3KuSBgOLvXzyGD6oXt14PfvlBOlfFWSEwbbJO2hjX9P6RoVHKIGRrwCy4269X
1rwCjFpLmVlP4cLSUlbQQR/P1V8RCe/XxTptJReUCzDLE01svZjTFUsmW5nkIMrY
gOnVsClV+Afy5BmSm9iT2LkQjcpxEUSLXfqFA7IcR0iqLBE309qo7Q7WdL6gudwf
yqbXmoCTQ5rdoteqwnZzvdPbWFAjtzb5c67cbbUu6oApoagU8yA=
=9TwL
-----END PGP SIGNATURE-----

--------------rBpVZLHUK3nDIe7sxsLzibYl--
