Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1F68A2609F9
	for <lists+linux-man@lfdr.de>; Tue,  8 Sep 2020 07:25:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728474AbgIHFZB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 8 Sep 2020 01:25:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41200 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726387AbgIHFZA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 8 Sep 2020 01:25:00 -0400
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com [IPv6:2607:f8b0:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5584C061573
        for <linux-man@vger.kernel.org>; Mon,  7 Sep 2020 22:24:58 -0700 (PDT)
Received: by mail-ot1-x344.google.com with SMTP id c10so13827134otm.13
        for <linux-man@vger.kernel.org>; Mon, 07 Sep 2020 22:24:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=4PwieyLeH7+sdbUIrxrM18ZfPgeUOrr/dfxKAZPk/C4=;
        b=mJL4ko9X9Po/0jETqYjUpYvOFmO74rIY3bcsRADsFJnypMZt5h9Tr3/jj6Bs/oDYEw
         MWYCtWXwDxZ9OLr+NTaNnZkdFjorttsCNGsXkoLK7aEIgmhlYaICrDug5B4JYEbVz/SQ
         lMKyR7x9jTmUsjU+7QFZVvHQh1k5uMFYHfe6QzPzvv/CnRK3lFv3+l1BIR6rybSJhI4Z
         TwcNYlvwcRo7Q7/VnRvd8Hrhskpvv0lbzXJN4HcfZf1vrnw+VCPxIculg8JHvaWT6i65
         Jl8wxtGKQjEkTymQRElp9OckRvcu2YGlVsxr4/+seaIIuzrN2TArd4rmFmCpBXFMZdNN
         5wGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=4PwieyLeH7+sdbUIrxrM18ZfPgeUOrr/dfxKAZPk/C4=;
        b=I+axuw9vYqrw2kovqfSMkNeyeXo7eDIK6Wo1iLU9LGAMGC6wJwN+uZm29vYJ/niEvi
         K8zYR8Lc0l7Qw7O7q1HfOlKeC8v2TIp7Ja2olqE1bJ/3UfkdhLgoQcTbgT1npgtCmLuB
         xdmexeZ1PtOi5dqfrSlQKmYR5zbE3k9zG/KM2bnuCGQXyyE534QuP8c+0uVOUMNNqosk
         PY7ENyqi7/9ubEK+2sfORsbqaHARDR4fOIzC/G5y1LDsdq8u6FWmZogNvm6ykvoS82n+
         wmNIGcbp4ZoovJPGj7JL7fgCNmCWNU4AVJ/tPmdz59JAQCT4NB3ZJs/iiAK6oGZx/tCH
         MSMQ==
X-Gm-Message-State: AOAM5312WtT2pf2MbuLKCNuoDpZliR9BoLjSCtg29f+Cvj7CVjc+tH6P
        bZIrbB0gi4OEKsZEcnXCS4+4B9MhTFviYYmfXkQ=
X-Google-Smtp-Source: ABdhPJyQDz5HYpWb/MgnkSKBKHn9Bo53IhkNJTyJXrZMyIa9qN5xFMhgBGMjKFHGqDLuY0ReYbjgqIZ/+7D+e0ycPSA=
X-Received: by 2002:a9d:7745:: with SMTP id t5mr16557748otl.114.1599542696655;
 Mon, 07 Sep 2020 22:24:56 -0700 (PDT)
MIME-Version: 1.0
References: <84fe18ab-7ba1-a8eb-0f36-6b0dafe6562d@gmail.com>
In-Reply-To: <84fe18ab-7ba1-a8eb-0f36-6b0dafe6562d@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Tue, 8 Sep 2020 07:24:45 +0200
Message-ID: <CAKgNAkj3DnVNUMA_=OM1Cw9i+3_LBhiqLfSYwYUq127=rPuDzA@mail.gmail.com>
Subject: Re: BUFSIZ vs magic numbers and co.
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On Mon, 7 Sep 2020 at 23:37, Alejandro Colomar <colomar.6.4.3@gmail.com> wrote:
>
> Hi Michael,
>
> There are a lot of EXAMPLES where buffers are created.  In those
> examples, usually there is either a magic random number (e.g., 100, 500,
> 1000) or a custom macro such as `#define BUF_SIZE 500`.
>
> Those examples could all use `BUFSIZ` from <stdio.h>, which would reduce
> code (not having to define the macro), and be more consistent (not
> having a random magic number in each example).
>
> However, I see a slightly good point in having magic numbers in the
> examples section:  a novice reader could infer that you are focrced to
> use BUFSIZ if it's written all over the place, while if there is a
> random magic number, the reader probably will deduce that he can use any
> number.

Yes, I think that's a good point. There's nothing magical about
BUFSIZ; it relates just to stdio.

> What do you think about it?  Would it be better to consistently use
> BUFSIZ, or just keep the magic numbers?

Keep the magic numbers, I would say.

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
