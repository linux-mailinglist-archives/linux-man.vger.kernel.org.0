Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 519486DF216
	for <lists+linux-man@lfdr.de>; Wed, 12 Apr 2023 12:35:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229620AbjDLKf5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 12 Apr 2023 06:35:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45462 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229503AbjDLKf4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 12 Apr 2023 06:35:56 -0400
Received: from mail-qk1-x730.google.com (mail-qk1-x730.google.com [IPv6:2607:f8b0:4864:20::730])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7724810EF
        for <linux-man@vger.kernel.org>; Wed, 12 Apr 2023 03:35:55 -0700 (PDT)
Received: by mail-qk1-x730.google.com with SMTP id p23so4145386qki.4
        for <linux-man@vger.kernel.org>; Wed, 12 Apr 2023 03:35:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681295754; x=1683887754;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7aK4u0X2BMRwkotJKdrY07kVoita9JXD9vPjrRRv47o=;
        b=GwfNOaWyUDt1pJ2FQ2yIV0ZBDmwwPRN1nF2G03l38H6Jegp+EmLrjMANZRjUUPNvtx
         +GR4rmuiF1dd2gQWdYL1Y14WD5TMTzz0H2PbQHbu53o4WfsUjkkt196/avDYz342RSVs
         A7CpYRrh2ZAKhTLeamIJRan7E1hzVs88VUQpkjg4bOgtw/Va1DNJwsPyQ9VHUvaqV3x2
         nJwgkmA05GYZaMRAJ1qNtxNWFWTeC8Y+jV2sandkwXc8yXRk1sPL1FnNdJY4FpSuP+uY
         jiMctQAh+l+a/9J9dx348Da7q9dhuREYST5M+o0p91bHCs+Tyn/50fdW841eyy6FapY1
         ThQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681295754; x=1683887754;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7aK4u0X2BMRwkotJKdrY07kVoita9JXD9vPjrRRv47o=;
        b=N3B7CfLojG+UOKFQ6dS+nR3kuCL42RN0rTpJ/QhKSHslYiCWmonYROPcG59eWklQjc
         V1MdX/key497xQCZr8D652S0kEw3Kx81oJwx3M/40quwYhEoj4AzVn2vn95rd094Ji+R
         +m6JujSfYUrBpI6ElOtPKAojCLcPhxFJayv9Hd+vMP8WNcGbnwQfd/z4ZuKpFxcZnIKW
         caHjbq/4sJnRpiAqRSrQ0pk2EaQ9uUgwUuzFmsXTf/eD5TSz2Wkg58oOaIvaDUTS2zbZ
         s5GBDWnmPestRYF4jHm6KCHpelPFFebupemEFeDZNe9Fkke65PBAQymfQP2ribrOqps8
         5OVA==
X-Gm-Message-State: AAQBX9cr6JgamurzkcPoMts8E+UtD8s67+i5KjsszH0jay6y4++oO6/A
        f0pnioIo3aKy1m1pQPY7xTA0LGeoMJ/umP1+i2Q=
X-Google-Smtp-Source: AKy350YHdMZ47HSA/8k4yG1MPnBu6+j/u5sTClBw2PQ5SymSEnGGv0XgyTLV23yu9mDAgjiARcArS7UYp64c8dNHoUc=
X-Received: by 2002:a05:620a:1981:b0:746:1eeb:4db1 with SMTP id
 bm1-20020a05620a198100b007461eeb4db1mr4536242qkb.2.1681295754448; Wed, 12 Apr
 2023 03:35:54 -0700 (PDT)
MIME-Version: 1.0
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com> <834jpuuc1a.fsf@gnu.org>
 <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com> <83sfddqvk3.fsf@gnu.org>
 <390c8bba-6089-b006-eaf1-9fcfda2c6c4b@gmail.com> <837cumonv9.fsf@gnu.org>
 <78ca213f-8723-dccb-e131-081400c28e5d@gmail.com> <87a5zhwntt.fsf@ada>
 <c6e9eb6a-a2ba-1de1-211f-bc6ccc3f7a9a@gmail.com> <875ya1ecq1.fsf@gentoo.org> <20230412083226.768D722138@orac.inputplus.co.uk>
In-Reply-To: <20230412083226.768D722138@orac.inputplus.co.uk>
From:   Mingye Wang <arthur200126@gmail.com>
Date:   Wed, 12 Apr 2023 18:35:38 +0800
Message-ID: <CAD66C+YeyLqGUg9XpswN=bpPveR54HNNFXaOZ5X2e6c4vcQ7oA@mail.gmail.com>
Subject: Re: Compressed man pages
To:     Ralph Corderoy <ralph@inputplus.co.uk>
Cc:     Sam James <sam@gentoo.org>, groff@gnu.org,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, Apr 12, 2023 at 4:36=E2=80=AFPM Ralph Corderoy <ralph@inputplus.co.=
uk> wrote:
> If you're putting effort into researching another compressor then
> consider lzip(1).  https://www.nongnu.org/lzip/lzip.html
>
> Its author compares it against xz in particular.
> https://www.nongnu.org/lzip/xz_inadequate.html

lzip is cool and all, but the thing is we are talking about storage
for distribution on every single person's computer in single-file
form, not archiving into a tarball. We are looking at a world where
almost every system has xz installed because of some past decisions,
unfortunate or not.

Regards,
Mingye
