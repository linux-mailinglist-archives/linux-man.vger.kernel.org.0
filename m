Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5E8B46DFE09
	for <lists+linux-man@lfdr.de>; Wed, 12 Apr 2023 20:52:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229586AbjDLSwy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 12 Apr 2023 14:52:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34532 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229532AbjDLSwx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 12 Apr 2023 14:52:53 -0400
Received: from mail-qv1-xf2c.google.com (mail-qv1-xf2c.google.com [IPv6:2607:f8b0:4864:20::f2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D5E814EE5
        for <linux-man@vger.kernel.org>; Wed, 12 Apr 2023 11:52:50 -0700 (PDT)
Received: by mail-qv1-xf2c.google.com with SMTP id dd8so440497qvb.13
        for <linux-man@vger.kernel.org>; Wed, 12 Apr 2023 11:52:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681325570; x=1683917570;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jPcrfD2S8BG53Nblp+yUbifOaP/DxTawTPeguEoELD8=;
        b=BJSGu1r1gaAg5EV/8BQSHii7qNkWqkUTs+THhFjDJvONDHHDpMnxXdbAPKeWyacbAP
         bSjOeBUnZJ8U6zRDnUNiy5G96dr6LLA02KQ6fHc3F86zhPvch6cWYeCOIeSoyEk0LezW
         lzuP5z9yA19osiKB/07gXGLARdmgNGTy1fuz3EmhkSY6itudfLlCaFNXTJJMHptKtVar
         Y5mpvi9SmADfDPu5QMM0mzS+T/o7te1S03zUeEyoS1nctdb+kOAmLn8ejGDip62pBUtP
         X4cfrXnt/1y27e47ltPtwLWh5diIPkXPpCo+DwM8IuqO9sRTSABNWU5f73hjGWfei/vE
         CHmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681325570; x=1683917570;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jPcrfD2S8BG53Nblp+yUbifOaP/DxTawTPeguEoELD8=;
        b=eonuVdPj50h5DSl2Zq0JqNIujdU8/F7OEJzPpEioOJZihbY5yLIfmXF+Dqrhuw+XVA
         a9oyVTQjpbCleHPyeo4Kyi/fwQRdtUuPQPlNTllBVCkriwNo05efrn9mDbmma5aMNHOd
         GVkHhqCBlAvih0D+zR0bWdnmj3k4sVfjWg3cRaG/etK6+59GG9oyi6uyYlfEf+uaSXhV
         hmKrcGvUGbPxQlS5OaB3XBzSvobE+ipWRqNpSycEMa980NdXYHDV5vfcl/KuvF+QzBXL
         1DIQgAZYQd6q9/Bp82rYWdHfDIsybjZccOcotFeGdijrTZSz5QG/horqsGclM6D1i2u9
         qn7Q==
X-Gm-Message-State: AAQBX9d+q+LXNbFhuEo4qCDp7iu6A7H/9sBqeweLLP/QBx3AkpmjSzq+
        Z+l2/f/IZQM/lpovJm+VbW+SgXs58JeKYIZq+ZE=
X-Google-Smtp-Source: AKy350ZtRO4ICf+Vs7tShNxsdujLiUa46jMXXmlUP1jPTCrhrs9gapw9pZ8E+bs+dwaNZ57VV4YswYvIfEjepfoT128=
X-Received: by 2002:a0c:f9cc:0:b0:5ef:4436:ef38 with SMTP id
 j12-20020a0cf9cc000000b005ef4436ef38mr589029qvo.4.1681325569779; Wed, 12 Apr
 2023 11:52:49 -0700 (PDT)
MIME-Version: 1.0
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com> <834jpuuc1a.fsf@gnu.org>
 <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com> <83sfddqvk3.fsf@gnu.org>
 <390c8bba-6089-b006-eaf1-9fcfda2c6c4b@gmail.com> <837cumonv9.fsf@gnu.org>
 <78ca213f-8723-dccb-e131-081400c28e5d@gmail.com> <87a5zhwntt.fsf@ada>
 <c6e9eb6a-a2ba-1de1-211f-bc6ccc3f7a9a@gmail.com> <875ya1ecq1.fsf@gentoo.org>
 <20230412140451.f03a6c19983694fe844bbb5a@plushkava.net> <44768e26-ed92-0562-2318-68fec781126b@gmail.com>
In-Reply-To: <44768e26-ed92-0562-2318-68fec781126b@gmail.com>
From:   Mingye Wang <arthur200126@gmail.com>
Date:   Thu, 13 Apr 2023 02:52:31 +0800
Message-ID: <CAD66C+Z0Vi0LeXSdTsm_c_Nz8OPdOAVAEZov_s2=ELJTu+pKoQ@mail.gmail.com>
Subject: Re: Compressed man pages (was: Accessibility of man pages (was:
 Playground pager lsp(1)))
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Alexis <flexibeast@gmail.com>, groff@gnu.org,
        Ingo Schwarze <schwarze@usta.de>,
        Dirk Gouders <dirk@gouders.net>,
        Colin Watson <cjwatson@debian.org>,
        Ralph Corderoy <ralph@inputplus.co.uk>,
        Kerin Millar <kfm@plushkava.net>, Sam James <sam@gentoo.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, Apr 12, 2023 at 10:24=E2=80=AFPM Alejandro Colomar
<alx.manpages@gmail.com> wrote:
> $ sudo make install-man prefix=3D/opt/local/man/xz___ -j LINK_PAGES=3Dsym=
link Z=3D.xz  XZFLAGS=3D      | wc -l

Small nitpick here as Kerin's recommended pb=3D0 isn't actually used.
https://bugs.gentoo.org/169260#c19 (from Kerin) suggests that we might
get one-third more.

I'm having trouble getting the Makefile to behave on MSYS2, but it
does shrink a manual copy of man*/ totalling 7.2 M (probably because
`exit` and `nan` didn't get checked out by git -- case-insensitivity
issues) down to 2.8 M (both `du --apparent-size -sh`).

> .bz2, .lz, and .xz have similar times, and tuning the compression
> doesn't produce important changes in speed

Or size. This is to be expected, since man pages are really tiny
files, to the point that compressors can't see much context. [Zstd and
brotli each have a "dictionary mode" to deal with this, but (a) Zstd
dict-file requires an extra flag on decompress (b) nobody has brotli,
which has a default dictionary, installed.]

> .xz, but I don't see any advantage of using .xz).

Going for `xz -9` only unnecessarily inflates the dictionary size
beyond the file size and therefore the mem requirement. The dictionary
size at -0 is 256 KiB, already enough for almost every man page in
existence. (gz -9 is 32 KiB, if I recall correctly.)

> Conclussions:
>
> Any compression formats other than .gz are unreasonably slow.
> I'd say either use .gz, or plain text, or prepare to
> contribute code yourself to man-db to optimize for your favourite
> compression format.

For every compression format someone adds, there's going to be one
more optional dependency...

Cheers,
Mingye
