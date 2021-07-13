Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 57F783C74FE
	for <lists+linux-man@lfdr.de>; Tue, 13 Jul 2021 18:36:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230296AbhGMQjS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 13 Jul 2021 12:39:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235623AbhGMQiu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 13 Jul 2021 12:38:50 -0400
Received: from mail-il1-x129.google.com (mail-il1-x129.google.com [IPv6:2607:f8b0:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD5D8C06119D
        for <linux-man@vger.kernel.org>; Tue, 13 Jul 2021 09:35:07 -0700 (PDT)
Received: by mail-il1-x129.google.com with SMTP id r16so16834454ilt.11
        for <linux-man@vger.kernel.org>; Tue, 13 Jul 2021 09:35:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=xnkW9xzeY0yYo+BSi4okF3lpv9EeEMn7zMwkv0ak7IU=;
        b=CALzqpqUwB1yBSQzVAlV3efSbvED9QqbVindWfdM+EFdL1249ern4fnjVzTYzoKbRI
         4EQsZ2nqApF96JaBD/i/CZ1N1f+GX9W/QUXbz4NlEGmqe3wSEA9eqvoXfnxVq9BtH0Or
         zPTVJZfiZLKaSTYTz0em/XC3AkndnV7b4hXFaTbOYcmSUBwoxq9rkoygunJO7Y8B93B3
         XdrOsOsLDlFB8c3wxLbjVpszKbEh6qpMANiVSUltOoG+nzH/cUC9SDGMKr9F8qCNqm8n
         8nOEIVeodM18FD6vp6i0T+TWHKeDos4D4BeslFXHZsQMUw+d15dfBY1X0oWYYtOg1e33
         xXOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=xnkW9xzeY0yYo+BSi4okF3lpv9EeEMn7zMwkv0ak7IU=;
        b=p5EmhR0kyChUuI6HTIa8ikSm7i/B5KWhvuEzou5k8xvuLCApICgkyQeVJ8K0v4YGsI
         ltoST1Ab2/SIWUG7gcU8bKS8lqPpWSXw9m0zicP9svL5ZkL6oft0rnZmsdXGQsOiAkSF
         Z4t8Rak/dY6p6HNkdx38WLYsFqJ8HV6OUY3Yf4gsMEHCMqCuA1xwoxTgrzNF5RYnbanh
         oLm8XSis27cHeuxudeuj5lJp1SKoFWtLgZVIVDutlJLrfAT9bB9ezQgkeKY3zSYbyXLH
         vKsIHRi+D/iTQZ2rZAyXeFhDT8TEGI4zbPjoiNzYocjZpcbOLLntu/ZvSjdHlnpdLveI
         095Q==
X-Gm-Message-State: AOAM532tBGbft2MQ5RbI345b3ZnE8DBUEKNQV5G3R34FE57r92HN8D9N
        gUC66LwQwynW6IkUy5JwWpTUSpb4asYlEiCM7pU=
X-Google-Smtp-Source: ABdhPJw1cd5dyLhIa3oN2+aUYyHA7C0gnpRrolVi7atjbyyKUWpYsj0y9VxTRa0XU0Yfk8TbRQlfTG0wY0hHryhZCSs=
X-Received: by 2002:a05:6e02:1c2d:: with SMTP id m13mr3413935ilh.137.1626194107356;
 Tue, 13 Jul 2021 09:35:07 -0700 (PDT)
MIME-Version: 1.0
References: <20210318160817.3586288-1-amir73il@gmail.com>
In-Reply-To: <20210318160817.3586288-1-amir73il@gmail.com>
From:   Amir Goldstein <amir73il@gmail.com>
Date:   Tue, 13 Jul 2021 19:34:56 +0300
Message-ID: <CAOQ4uxjxqavy=E7NAO-E3kCe_q4E087iXtTZgtvj4YLjLdzbmw@mail.gmail.com>
Subject: Re: [PATCH 0/2] fanotify man page updates for v5.13
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <mbobrowski@mbobrowski.org>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, Mar 18, 2021 at 6:08 PM Amir Goldstein <amir73il@gmail.com> wrote:
>
> Hi Michael,
>
> Following are updated for changes queued for v5.13 [1]:
> - Unprivileged fanotify listener
> - Configurable limits
>
> It is still pretty early in the development cycle, but I am posting
> them early for review.
>

I Michael,

This post was a long time ago so following up on it now.
FYI, the 2 patches are also available on
https://github.com/amir73il/man-pages/commits/fanotify_unpriv
along with another minor man page update.
I will post it separately soon.

Thanks,
Amir.

>
> [1] https://lore.kernel.org/linux-fsdevel/20210304112921.3996419-1-amir73il@gmail.com/
>
> Amir Goldstein (1):
>   fanotify_init.2, fanotify_mark.2, fanotify.7: Configurable limits
>
> Matthew Bobrowski (1):
>   fanotify_init.2, fanotify_mark.2: Document unprivileged listener
>
>  man2/fanotify_init.2 | 99 ++++++++++++++++++++++++++++++++++++--------
>  man2/fanotify_mark.2 | 14 ++++++-
>  man7/fanotify.7      | 35 +++++++++++++++-
>  3 files changed, 127 insertions(+), 21 deletions(-)
>
> --
> 2.25.1
>
