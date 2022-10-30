Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 584BE612D1E
	for <lists+linux-man@lfdr.de>; Sun, 30 Oct 2022 23:00:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229520AbiJ3WA3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 30 Oct 2022 18:00:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33998 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229597AbiJ3WA3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 30 Oct 2022 18:00:29 -0400
Received: from mail-oo1-xc31.google.com (mail-oo1-xc31.google.com [IPv6:2607:f8b0:4864:20::c31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49B4855BC
        for <linux-man@vger.kernel.org>; Sun, 30 Oct 2022 15:00:27 -0700 (PDT)
Received: by mail-oo1-xc31.google.com with SMTP id g10-20020a4ab4ca000000b00481082808cbso1443764ooo.10
        for <linux-man@vger.kernel.org>; Sun, 30 Oct 2022 15:00:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=hnI43R7sbVDFnLY4RLX6cRtNI6MevsoTQ3q0AQNk0n0=;
        b=AzUNeh5UEL37ldZtTMztLDLOGqQmlGiDauhS7M0sdMJbMKqiEjy7LhCd68tGvIWpDe
         vGp3iTgpdySRlaqdROTqeoehul7TnaGn/Vh5yzYwy/JzpjePRiDzBiMPhXKj4YKMEgb8
         cI61m77zFeuc2vTDh9567VN7pri+FnPs9cZSlLgLPMY4Qc2hgma54lDShgliyU/j2X20
         oUvLd34qB2JKDbIFNzYJ9yFgIbfFmym3CWn4MlD8Io4xCLfV0t6bcnL1XfIt/6788i7F
         Qwy0emVZP/mh5Au+5DZ697k/bXJ+S6vPbBLetUIbDkWqhb5cDdJWkQkwlWP5suxKRflq
         Sq2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hnI43R7sbVDFnLY4RLX6cRtNI6MevsoTQ3q0AQNk0n0=;
        b=Fu1D6kmWth6ViCmMZ/EzgxU3LkaiIIqD7eg1GDYxmVnW0fNWRyFb9x+ck8+PsZ+T7k
         awHfV7nzvOdCQefSFMIZ7J9AWUnZFrzLyAqdgLIvaAvJTjq/n/odw9gwZxKET2q9BjWA
         Dp0kguwj5zHYEJcnUBe0xkdAvpHo6LdoY7xhNtoliqiza4oaveN+aa5xq8AsNgy5AGk6
         7r6TD34WeutPie8pl1COhmxkcrnw64FiqJgicZ/o1wGxUTJ9VjpgES/iNCiMc9PqMewp
         acwjBo8NH6p4Zbo0rHB0J2dbjeQFgQ4F9cJ11QLCzy4AVp6WDJRYQqyPPWVbnJAbIrYF
         P+/w==
X-Gm-Message-State: ACrzQf3N+c7PWnR2eT+AtTm93ypgQFLjv0IqyT6gDAypD4Xe6JKbiJSC
        dG3LsDLw+LSQWqoBHm55/fc=
X-Google-Smtp-Source: AMsMyM4ZT9Aazx/2VMziBWozL1eno6qew82WsjNaDC5WaSOir9kD+JvCZ1WQL9+8gYlLQICBkWZucg==
X-Received: by 2002:a4a:aa88:0:b0:48b:2ce2:d7cb with SMTP id d8-20020a4aaa88000000b0048b2ce2d7cbmr4263738oon.34.1667167226600;
        Sun, 30 Oct 2022 15:00:26 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id y7-20020a056808130700b00359ba124b07sm180441oiv.36.2022.10.30.15.00.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Oct 2022 15:00:26 -0700 (PDT)
Date:   Sun, 30 Oct 2022 17:00:24 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>
Subject: groff 1.23 status (was: [PATCH 1/2] All pages: Use correct letter
 case in page titles (TH))
Message-ID: <20221030220024.qlenumsrk4hajnfw@illithid>
References: <20221030181651.98670-1-alx@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="twwv4twtfwvqzin5"
Content-Disposition: inline
In-Reply-To: <20221030181651.98670-1-alx@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--twwv4twtfwvqzin5
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex!

At 2022-10-30T19:16:51+0100, Alejandro Colomar wrote:
> I finally fixed the page titles for the Linux man-pages, using the
> same letter case as in the file name.  I didn't compare against the
> NAME, as it would have complicated the script, and they normally
> match.  I don't know from the top of my head if it's 100%, but we can
> assume some risk there.

For those to whom this change is coming as an unpleasant surprise, the
forthcoming groff 1.23.0 features an option that will reverse this
change at rendering time.

=46rom groff_man(7):

   -rCT=3D1 Capitalize titles, setting the man page title (the first
          argument to .TH) in full capitals in headers and footers.
          This transformation is off by default because it discards
          case distinction information.

This register can also be set in a site-local "man.local" file to force
it on for all pages.  On Debian-based systems, this file is in
/etc/groff.  The following line will do the trick.

=2Enr CT 1

The groff_man_style(7) man page offers further examples of such
rendering customization.

   /usr/local/share/groff/site-tmac/man.local
          Put site=E2=80=90local changes and customizations into this file.

                 .\" Use narrower indentation on terminals and similar.
                 .if n .nr IN 4n
                 .\" Put only one space after the end of a sentence.
                 .ss 12 0 \" See groff(7).
                 .\" Keep pages narrow even on wide terminals.
                 .if n .if \n[LL]>78n .nr LL 78n
                 .\" Ensure hyperlinks are enabled for terminals.
                 .nr U 1

          On multi=E2=80=90user systems, it is more considerate to users wh=
ose
          preferences may differ from the administrator=E2=80=99s to be less
          aggressive with such settings, or to permit their override
          with a user=E2=80=90specific man.local file.  This can be achieve=
d by
          placing one or both of following requests at the end of the
          site=E2=80=90local file.
                 .soquiet \V[XDG_CONFIG_HOME]/man.local
                 .soquiet \V[HOME]/.man.local
          However, a security=E2=80=90sandboxed man(1) program may lack
          permission to open such files.

Bertrand Garrigues and I hope to have the second groff 1.23.0 release
candidate out very soon; the list of unmet release-goal tickets is
almost exhausted.[1]  I encourage people to have a look at what's
forthcoming in groff 1.23 and try building it from source; feedback will
improve the release.

  https://git.savannah.gnu.org/cgit/groff.git/tree/ANNOUNCE
    is a template for the release announcement.

  https://git.savannah.gnu.org/cgit/groff.git/tree/NEWS
    is a complete (we believe) list of user-visible changes in 1.23.

  https://git.savannah.gnu.org/cgit/groff.git/tree/INSTALL.REPO
    is a list of instructions for building groff from a Git checkout.

  git clone https://git.savannah.gnu.org/git/groff.git
    will get you started.

Regards,
Branden

[1] https://savannah.gnu.org/bugs/index.php?go_report=3DApply&group=3Dgroff=
&func=3D&set=3Dcustom&msort=3D0&report_id=3D225&advsrch=3D0&bug_id=3D&summa=
ry=3D&submitted_by=3D0&resolution_id=3D0&assigned_to=3D0&bug_group_id=3D0&s=
tatus_id=3D1&severity=3D0&category_id=3D0&plan_release_id=3D103&history_sea=
rch=3D0&history_field=3D0&history_event=3Dmodified&history_date_dayfd=3D30&=
history_date_monthfd=3D10&history_date_yearfd=3D2022&chunksz=3D50&spamscore=
=3D5&boxoptionwanted=3D1#options

--twwv4twtfwvqzin5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmNe8+sACgkQ0Z6cfXEm
bc5uEBAAicP0fxcjpb5Mr+XZEX2B6TWreuQGq6h1/MJV5i9ydJzewc7amwI7la/j
ppAoO+l1vlDQ0XnMYGihYuRsYEugQo0z3U8WiUPThzwWXK37YyxuojY1GHCcZYop
Y1B1d9y/xBe0MdW4EFIV+j1C1k8NRQFAbpt3VBSN5e2cmisddpfbwaemxNGFIaqA
WDcgm3hZinyPzijPmJPsqCOxdAfdwTGf4lTS3VpJqt1T9Gq4qec+sszy+psdX2y9
vLtkBkkCWui1PpocqRTMJV4CBC/HLS6KEo5Tg8v6jfZNCI1Vg4Crk/e9/9JXEXUG
gT55c6Ts9e19kkBkPwolP9S3Y5FdxF/X4mDfIfx53L5QinrO8qwtLsMeA7nB9Wh8
ThgJFmCrfpsLMzA1GQwbjrXJpBbf3tL4e04zg7Ix5QobN9tIXesS2y0K9bJg0e/f
7J3mpfwKOu8tYTs7lCk5Cgx2C0n5TWkeTr0nXssK295x7O000iVZQQQzapCXTxAA
tk9SYLlyfGcCdC4xu9Gtqfl0BaeHIor5N7AHhcwUjUHdS2BhD6fCSs+Ggr+VU2AX
VqtEQYwmcx2NErr3WrhFzKiNrnBfQqLTNp30/NCy8/NjmeWtwUqU4mpqPhuzKdT/
7YKxPYSjnOnBi11GrHb/jkfaL0ssc+iO6/lFfWADruXaluoJg4Q=
=wP59
-----END PGP SIGNATURE-----

--twwv4twtfwvqzin5--
