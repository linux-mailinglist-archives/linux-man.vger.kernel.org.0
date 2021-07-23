Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4D9963D3EF3
	for <lists+linux-man@lfdr.de>; Fri, 23 Jul 2021 19:42:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230094AbhGWRBg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 23 Jul 2021 13:01:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51914 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230098AbhGWRBf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 23 Jul 2021 13:01:35 -0400
Received: from mail-io1-xd2e.google.com (mail-io1-xd2e.google.com [IPv6:2607:f8b0:4864:20::d2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E478FC061575
        for <linux-man@vger.kernel.org>; Fri, 23 Jul 2021 10:42:08 -0700 (PDT)
Received: by mail-io1-xd2e.google.com with SMTP id 185so3469168iou.10
        for <linux-man@vger.kernel.org>; Fri, 23 Jul 2021 10:42:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=YbUu5/sVn0BWvR+9H2qVYJ4qOuEC7JIxrR8qaScM7ck=;
        b=BhvVfK9ErepRcPrUZbz5cArGe9+2btbnp1GIiQ+KwwRkIe1Ejd4j9XTKHEq64witsT
         G2HqEmnu30t8ecnTUGSKwv+4RVNH4gRXf7lOm6qkqIYfNym3VSBCKIj0sB6I0G/tiMa/
         kuZ6qgQIHsuRQRjRe0YuaCkTWkI6m+sde1Z4I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=YbUu5/sVn0BWvR+9H2qVYJ4qOuEC7JIxrR8qaScM7ck=;
        b=KZ0U9zkeNq+l9qIPtHklJSCmcnt9HDvvoQMmrvumzc+c60naLitlPBYnLhwucqJJ7W
         Y1itOb8TyAO2LDGLQRAJZFnPs5ZM/9zEVxLe39tk+lpGtEzJmL8y2zerMsuV92TJhETR
         a0phATyMc4LzD6+HZEVPa4+s8U3iwtY04F+UioqJN2fHQkB2SldGWEQ9c+UZA6TJWQd1
         fzs468YxEPPgAq+pEBBrxrhV9Q71LYsLjMMbkUP81vPvP1OiNRIe99uz+kLarkWaOjFk
         /c4wqN0yVM/W7EKRixs3nCQ1nSEISra72xmp18fpQOFQbawpCkAYFeU2Rxb2GsMptSbL
         HwFw==
X-Gm-Message-State: AOAM532HFOZcslzqZjMSfNkNGZfGF7sZRxMLzTgFrOECtA56pa9xJfQJ
        PLLTSf2x1TdHysWZbt2TsuyAiO8n1NXpvg==
X-Google-Smtp-Source: ABdhPJxyA98OpWncN1ivw58zrFMO9dda7NqRf3+hgzs02TJ0vqa6cz6wKc69xQIhZcXeWyRMZecv+Q==
X-Received: by 2002:a6b:dd02:: with SMTP id f2mr4796050ioc.11.1627062128297;
        Fri, 23 Jul 2021 10:42:08 -0700 (PDT)
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com. [209.85.166.49])
        by smtp.gmail.com with ESMTPSA id z18sm16313902ilp.68.2021.07.23.10.42.07
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Jul 2021 10:42:07 -0700 (PDT)
Received: by mail-io1-f49.google.com with SMTP id y9so3548022iox.2
        for <linux-man@vger.kernel.org>; Fri, 23 Jul 2021 10:42:07 -0700 (PDT)
X-Received: by 2002:a6b:ee16:: with SMTP id i22mr579021ioh.37.1627062127329;
 Fri, 23 Jul 2021 10:42:07 -0700 (PDT)
MIME-Version: 1.0
References: <20210722212120.3060163-1-evgreen@chromium.org>
In-Reply-To: <20210722212120.3060163-1-evgreen@chromium.org>
From:   Evan Green <evgreen@chromium.org>
Date:   Fri, 23 Jul 2021 10:41:31 -0700
X-Gmail-Original-Message-ID: <CAE=gft78h6bj9W5UE0DvHUTPma+TNvBEL=TB-xBRAfL0Xv2u1Q@mail.gmail.com>
Message-ID: <CAE=gft78h6bj9W5UE0DvHUTPma+TNvBEL=TB-xBRAfL0Xv2u1Q@mail.gmail.com>
Subject: Re: [PATCH] swapon.2: Document NOSWAP and additional DISCARD flags
To:     linux-man@vger.kernel.org
Cc:     Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, Jul 22, 2021 at 2:21 PM Evan Green <evgreen@chromium.org> wrote:
>
> Fix the FIXME and finally document SWAP_FLAG_DISCARD_ONCE and
> SWAP_FLAG_DISCARD_PAGES from Linux 3.11. Additionally, document
> SWAP_FLAG_NOSWAP, a shiny new flag being introduced in Linux 5.14. See
> the following link:
>
> https://lore.kernel.org/lkml/20210721143946.v3.1.I09866d90c6de14f21223a03e9e6a31f8a02ecbaf@changeid/
>
> Signed-off-by: Evan Green <evgreen@chromium.org>

Please disregard, the patch introducing the NOSWAP flag is still in flux.
-Evan
