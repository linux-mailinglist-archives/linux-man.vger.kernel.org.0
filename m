Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 85C20682AEA
	for <lists+linux-man@lfdr.de>; Tue, 31 Jan 2023 11:57:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229692AbjAaK5B (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 31 Jan 2023 05:57:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41476 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231538AbjAaK5B (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 31 Jan 2023 05:57:01 -0500
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F7EDDBDA
        for <linux-man@vger.kernel.org>; Tue, 31 Jan 2023 02:56:59 -0800 (PST)
Received: by mail-ej1-x62e.google.com with SMTP id ml19so16854740ejb.0
        for <linux-man@vger.kernel.org>; Tue, 31 Jan 2023 02:56:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Zidr1BfWsvpNvbxd9awHMrJAGKQJQtICIvv9dSiLOlk=;
        b=HWdbaXsKqMuIHelCQSGo13bJJqUU9Ei24oZS7PFjT2KWds9YEklN44/MS1TKZvF6Ib
         ImaxVdQ62kvHIOT/dwqaGpPtRgDmCsjYRy0G5nLNaPSUqU6suR2tBe/9h8Sg/P11OSjp
         ZQijureamdbljp4C4cjvGLwReQIG8dbTLKs/syJbK+MDWu0V22Q6AfJA09Mtbp1g98h7
         6fmO8V39AQHrMIWTZqTIdUr/pcsapbwB8Iijpo0RdUqttHjwfd1+Wi9mjBoeFwvv+tsi
         /YTM2lQkGo2SAqTAua4yDXLdVN3YsrC7nbFyb3r9bN5T/LVZMS3RW3jQqGCIVb9XKj5e
         U8kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Zidr1BfWsvpNvbxd9awHMrJAGKQJQtICIvv9dSiLOlk=;
        b=nOLouJ3SwDGHJwJCT6Ypc7xv9Dlq/brgpC+nJyP/CV9+2YjZNbmRhOHEXJaQZ7a/F4
         9vOvTE/YTFuHx1qogBxgisS1qsNTqb3pxLgrUMjMN6kLPlRjC2E9RjsKWaR0S71XUa+M
         wjEyVEZUtexT82wg9lRQupOAwDgxvfp+uB5rQuqkuzTQ0rXuU6fOvyYK2t5U/IsY5Jrk
         i37UkpMG5Ev41V46h/Dj72RHeEInwBU/tcWqEFaA0cIrBEG/MOJ+xKrv7+DlKOcAFeL9
         bZSjOzCD+Ltj2IDFkEQHSWQREa8JHxSpJzVHkZLw7Yw7Z1MRH05au20+DmEdZvOewv5l
         3KRA==
X-Gm-Message-State: AO0yUKUg+uKaxmIpGGiWzGR3PYMBE86QNo0Zc2HdCMqo1id5bQdTNKYS
        e3e2Jih2WUw3v2MUj9aSWjqszGfVc96XukR4FoYLoiMw
X-Google-Smtp-Source: AK7set9UGOY9dnJhae7k6dbbLB2tJl3UzYW3auFmhF4m+JL/wWLMBbuK5Z2tTWcEkAhIVV4BywlZFRrBeYcy4NynUGo=
X-Received: by 2002:a17:906:24d0:b0:878:6828:3f27 with SMTP id
 f16-20020a17090624d000b0087868283f27mr5847010ejb.164.1675162617373; Tue, 31
 Jan 2023 02:56:57 -0800 (PST)
MIME-Version: 1.0
References: <20230122193134.GA29363@Debian-50-lenny-64-minimal>
 <CACKs7VAbs=fuqfEYhXALq3_PfoVbvVYUCc_D-GK5ObZJUPNwSw@mail.gmail.com>
 <534b83d9-0936-4a45-7d1e-159bfb07f492@gmail.com> <a2a3eeba-8292-9759-f29c-205a49f2a9c9@petrovitsch.priv.at>
 <87dbeee1-5f7a-2490-091c-2efd7ba2a25b@gmail.com>
In-Reply-To: <87dbeee1-5f7a-2490-091c-2efd7ba2a25b@gmail.com>
From:   Stefan Puiu <stefan.puiu@gmail.com>
Date:   Tue, 31 Jan 2023 12:56:46 +0200
Message-ID: <CACKs7VDERzxrgoAwMLBCTTCNbTc-Ju0jdgoUuYzNb_mfSHT+Ug@mail.gmail.com>
Subject: Re: Issue in man page charsets.7
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Bernd Petrovitsch <bernd@petrovitsch.priv.at>,
        Helge Kreutzmann <debian@helgefjell.de>,
        mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

On Sun, Jan 29, 2023 at 9:29 PM Alejandro Colomar
<alx.manpages@gmail.com> wrote:
>
> Hi Bernd,
>
> On 1/29/23 20:20, Bernd Petrovitsch wrote:
> > Hi all!
> >
> > On 29/01/2023 19:35, Alejandro Colomar wrote:
> > [...]
> >> On 1/29/23 17:45, Stefan Puiu wrote:
> > [...]
> >>> On Sun, Jan 22, 2023 at 9:39 PM Helge Kreutzmann <debian@helgefjell.d=
e> wrote:
> > [...]
> >>>> "Latin-1 covers many West European languages such as Albanian, Basqu=
e,"
> >>>> "Danish, English, Faroese, Galician, Icelandic, Irish, Italian, Norw=
egian,"
> >>>> "Portuguese, Spanish, and Swedish.  The lack of the ligatures Dutch =
=C4=B2/=C4=B3,"
> >>>> "French =C5=93, and old-style =E2=80=9EGerman=E2=80=9C quotation mar=
ks was considered tolerable."
> >>>
> >>> A bit weird to include Albanian in West European languages, isn't it?
> >>> Maybe the text could be reworked to:
> >>>
> >>>    "many West European languages such as Basque, Danish, [... other
> >>> languages ...] and also Albanian."
> >>
> >> I'd rather remove the "West" adjective from Europe.  It's simpler.  Do=
es it
> >> sound reasonable to you?
> >
> > And it's way more accurate:
> > - Albanian is Balkan.
> > - Icelandic, Norwegian and Swedish is Scandinavian.
> > - Italy is (usually) southern Europe.
> > - Faroese is propably also Scandinavian.
> > - Where is actually Galician spoken? In the north-west of Spain?
>
> Yep, Galician is the language spoken in Galicia, in the north-west of spa=
in.
> It's a language very similar to Portuguese.
>
> Will fix then.

Well, I think it might be that the intention was to suit Western
European languages (although yes, strictly speaking there are multiple
language families involved), and Albanian just happened to be able to
use the same charset. I'm thinking of latin-1 in contrast to latin-2,
which I was using in the past for Romanian.

Stefan.

>
> >
> > Kind regards,
> >      Bernd
> >
> > PS: Keen to learn something.
>
> Cheers,
>
> Alex
>
> --
> <http://www.alejandro-colomar.es/>
