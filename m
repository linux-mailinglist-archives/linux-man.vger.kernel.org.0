Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4CAE828BBAF
	for <lists+linux-man@lfdr.de>; Mon, 12 Oct 2020 17:20:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389562AbgJLPUi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 12 Oct 2020 11:20:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46662 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389142AbgJLPUi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 12 Oct 2020 11:20:38 -0400
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com [IPv6:2a00:1450:4864:20::644])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9FC41C0613D0
        for <linux-man@vger.kernel.org>; Mon, 12 Oct 2020 08:20:36 -0700 (PDT)
Received: by mail-ej1-x644.google.com with SMTP id md26so23698016ejb.10
        for <linux-man@vger.kernel.org>; Mon, 12 Oct 2020 08:20:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ofBD8vZrp3Aut6qdDjM0cDSrd4maOJ5AgeBCWLXm6Do=;
        b=d8hv4SSz411QexAljC3j/Tqj4gQ5plh6G0e56J7HB7NyqTHgwxYijARNMXD6Zzcv6F
         Uk9SfTZDglnVkxamc1+uC4jeY9CfHCJkvspF54HtLFoT5DgjnqmB7D0ZHEcMSaTQYfKu
         I7OONiaTBI9voPEPXXuYJuFhjZ5aAV5noYSqxrxgCGk1Ztb0jIbtjz7xf+AU4EuORa02
         RhiCtnlU2OgGIxqj3cblPrKixtv/Nonm1V6CV6F7OLWDXwZZkMYaQqyZ1h3839v0v538
         4bh6icuLPCFXlLpTpiLzfeIynqUIhN1/ajS0zhLgZ8fG52wkLG60tiWgTD61EuOXrDdW
         fttA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ofBD8vZrp3Aut6qdDjM0cDSrd4maOJ5AgeBCWLXm6Do=;
        b=ZMPgUbGKdD7qKXDL399ycvtOufLQSboF2ypUi8dg5mQktMDiYxIhnhd52aazLy3o2K
         je438XlQBOnW/+7LjagHm7WulQ4lltYpRRyEjl/LUPXWJGnshTSd9tVmlX2dX8XP3vRj
         nZ6gmXpnmkZBQ2EqDquStKGhjo+x3DCF5WFjvbpu1YMBLa/ZRrfBvPPCaxEbOcTf9kB3
         CyNzfDfoPQd3Olftf0cYkYzKzDI0/syJ598n/jf8JjhHkVLUYrlSRL/Cm5AZrXV3RzTt
         EjkUf6I4HUrYTOnTztqiarmoOK/+k/08xmYXtTgGOBEu8F0JSAjRYq83Z6Jg1WC6OIPo
         ZJaA==
X-Gm-Message-State: AOAM533cBvC1G3ZXZv17Oyxux/WQsb1xiDxUtEZp7ipkSdscuS1vVHk9
        OGM00J4xAAvgMayZVjc0y9FDQz5YftpYwg6WNYYRtw==
X-Google-Smtp-Source: ABdhPJyu6ahJYVJvJfop67WBk+uTXcMLyv/acMUMZyiQrkMfnzFowZh9vozvB0QSHfuY+Z8AeQ/wqYhSa4idaAshq+0=
X-Received: by 2002:a17:906:9156:: with SMTP id y22mr29612975ejw.184.1602516035134;
 Mon, 12 Oct 2020 08:20:35 -0700 (PDT)
MIME-Version: 1.0
References: <20201012114940.1317510-1-jannh@google.com> <20201012150738.GF29725@dhcp22.suse.cz>
In-Reply-To: <20201012150738.GF29725@dhcp22.suse.cz>
From:   Jann Horn <jannh@google.com>
Date:   Mon, 12 Oct 2020 17:20:08 +0200
Message-ID: <CAG48ez271-LALwrM3dDr_vvHr8XaoowcQLQGYAnxe1WLECse9A@mail.gmail.com>
Subject: Re: [PATCH] proc.5: Document inaccurate RSS due to SPLIT_RSS_COUNTING
To:     Michal Hocko <mhocko@suse.com>
Cc:     Michael Kerrisk-manpages <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        Linux-MM <linux-mm@kvack.org>,
        Mark Mossberg <mark.mossberg@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Oct 12, 2020 at 5:07 PM Michal Hocko <mhocko@suse.com> wrote:
> On Mon 12-10-20 13:49:40, Jann Horn wrote:
> > Since 34e55232e59f7b19050267a05ff1226e5cd122a5 (introduced back in
> > v2.6.34), Linux uses per-thread RSS counters to reduce cache contention on
> > the per-mm counters. With a 4K page size, that means that you can end up
> > with the counters off by up to 252KiB per thread.
>
> Do we actually have any strong case to keep this exception to the
> accounting?

I have no clue. The concept of "concurrently modified cache lines are
bad" seemed vaguely reasonable to me... but I have no idea how much
impact this actually has on massively multithreaded processes.
