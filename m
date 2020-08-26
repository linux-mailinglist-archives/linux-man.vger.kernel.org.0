Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B40912537BA
	for <lists+linux-man@lfdr.de>; Wed, 26 Aug 2020 20:59:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726834AbgHZS7b (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 26 Aug 2020 14:59:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44752 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726191AbgHZS73 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 26 Aug 2020 14:59:29 -0400
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com [IPv6:2607:f8b0:4864:20::242])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 181FEC061574
        for <linux-man@vger.kernel.org>; Wed, 26 Aug 2020 11:59:29 -0700 (PDT)
Received: by mail-oi1-x242.google.com with SMTP id z195so2467869oia.6
        for <linux-man@vger.kernel.org>; Wed, 26 Aug 2020 11:59:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=FkhpdFR0xuWiOOUsAqu2wK8/3CKjEwzisub+65NOtb8=;
        b=A8crGMMptxo3WQxat9Lc/L5ESunUq+JQxsx8GOUBMoamhmsep0Xx21dLobJKNE+Eui
         GmS3wximj+W5lRzn7oXNHdqeS6hnTwtzc6X2to9Pw/e4WQEGS6TDo4BhaGBo1mJ5Ns49
         yk7LWWhmWtKImAMi949rdlRHICpZW/bWro8CbkSHfujH6hSxod2gNNEiaC/MaVzNLXMp
         Q6EeOQ0cEa4F6XFqBvvk/ccUmOzXfsdvPkB+CanvpvQzJt0uwMqvt54KnaReyAdqrEJF
         06bJm+TwgmRy+vjZpakNMRQCM+G8NuCGJIyvpOYfclM/Thp06Rs3Jp6GvTEBNLV4Zaap
         ZBKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=FkhpdFR0xuWiOOUsAqu2wK8/3CKjEwzisub+65NOtb8=;
        b=rl/cLCnejv7Gy+n5icJsRIngLAF8yJUn8e9R46EnqybXQjX/EYZ3ue2hIqrpTJ+x91
         uuAIE6RmUkk7UkRSGHVruG43yeqUejjoBS3ugOlXJaQuYxU0M62fk/9SBDYTNw2s3uN9
         NoaF92ccxFm4N07l/S5hQh4L6cpPC1R8lpZHq0YsNqlJlOgXSnolrSmzznncLbDkifhT
         jBTOux76XJUZRrPFFMGR+y8kZv9l+ujFEb7f8JRjI40v13iFVcEVTPaEXLu0dIoMapfC
         BjG0QIRbPsn/uuSMRlWIviT4LzdtHU1MNagkM1dbXDJEITAIUQ7GcmIN5QR13MWvNXIO
         dtLw==
X-Gm-Message-State: AOAM533YxzFHENizv/bew4b09ulPpK7VaoInmhOfv0ZLRErsTSpHpZ06
        +siohcAgdiP8LfvGTHVR5ztdVCDvItI0fn1+FrSJLGDB
X-Google-Smtp-Source: ABdhPJxlm61eFcMIcMwKZd5tGs3TG2E/GQQRgZqVK4tJbyaOWjrJnsFj0E8RNSXUDQeehUNF8y15+W1aQ28u6p6EHaE=
X-Received: by 2002:aca:fc85:: with SMTP id a127mr4549762oii.148.1598468368082;
 Wed, 26 Aug 2020 11:59:28 -0700 (PDT)
MIME-Version: 1.0
References: <e95bd107-7a2a-1595-a796-8305badf97d7@deloquencia.de>
 <3e3f07ef-d48c-2469-f95c-0964f7ae42d9@gmail.com> <20200822084238.o5g4ethy5uhpng6m@jwilk.net>
 <CAKgNAkiW7ZLmf9z9rjxfHQVqOQ+Rzm9h4SUjO2664-Yjyr5xBw@mail.gmail.com> <20200826174128.stgz6fnisldrcnnx@jwilk.net>
In-Reply-To: <20200826174128.stgz6fnisldrcnnx@jwilk.net>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Wed, 26 Aug 2020 20:59:16 +0200
Message-ID: <CAKgNAkh3MX7b8qR7CgDqeFcX2diTwsYVfVNwfQFrLQWywHQHAg@mail.gmail.com>
Subject: Re: [PATCH] bpf-helpers.7: wfix
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     Thomas Piekarski <t.piekarski@deloquencia.de>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jakub,

On Wed, 26 Aug 2020 at 19:41, Jakub Wilk <jwilk@jwilk.net> wrote:
>
> * Michael Kerrisk <mtk.manpages@gmail.com>, 2020-08-22, 13:30:
> >I just regenerated the page from the current kernel source.
>
> The commit 7b203a3d6dc6c2b0 looks suspicious. It removes a large portion
> of text (65 insertions vs 432 deletions) and reintroduces a bug I fixed
> for Linux v5.7: https://git.kernel.org/linus/a33d3147945543f9
>
> Did you accidentally resync the man page against an older Linux version?

It looks like you may be right, though I'm not sure how I managed to
do that. Anyway, I just resynced again, which added some 670 lines to
the page.

Thanks for spotting that.

Cheers,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
