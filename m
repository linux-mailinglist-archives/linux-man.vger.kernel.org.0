Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7CE6632F42E
	for <lists+linux-man@lfdr.de>; Fri,  5 Mar 2021 20:43:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229591AbhCETn0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 5 Mar 2021 14:43:26 -0500
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124]:40433 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S230124AbhCETnU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 5 Mar 2021 14:43:20 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1614973400;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=n8fQZz5L6emVxfcwY5hjstGGD1YTSpKdseE34M/Cacg=;
        b=hpERcpVdAwN191O3feWqcP+cH9p4aA2X9Mnyt09JWRNIpmtN41xUxcsFiiQFKOhyNLMZwF
        5iyvkt9rPRLbJ+tD4ISMzDUDtlhGG22s/P6Um522bLPyBqj8a2LBAGmYw3xONipou5EZWr
        Md09LlYD3RBgJ13knKXb/d0v+xvHds4=
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com
 [209.85.166.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-350--0WmiGDTM5-u7NT0tXDTcQ-1; Fri, 05 Mar 2021 14:43:17 -0500
X-MC-Unique: -0WmiGDTM5-u7NT0tXDTcQ-1
Received: by mail-il1-f200.google.com with SMTP id v20so2643374ile.6
        for <linux-man@vger.kernel.org>; Fri, 05 Mar 2021 11:43:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=n8fQZz5L6emVxfcwY5hjstGGD1YTSpKdseE34M/Cacg=;
        b=KewtI+23i32ZKSdW1I38ytvhLPMrnWhdG5oiFs7TbvexOBlLN4fC4cUb6PpPsntP4m
         mrc79IijOdec5hZ+UbNKze9wEtl/oelF7FcQYIe64mL0nybuuj8in6JAGshGJOx50IwQ
         2o3nZqwI64boGQ+nc85ssQABCv+B6+45qYuC0JKh5X1sQKi42oMsuKBzjMcuIeUvwwib
         I3yfEWp6+AljpzePc7xqPH3dwiGXW0AMRT8bfS3WabOgU3qMlfe5IXH0mcchK6ly+cAJ
         N8vLJ04BVx4aYoN16FIhLIfzr1me9fjuh3jKzY7TH8crui81yHBViePP8uIbSWYRtUTr
         nN8g==
X-Gm-Message-State: AOAM5322fPSYifxcjxPcJqB8d4UPo1FbFiVtSJVjnBijmyAvgoaoezzP
        WxdS9VYW9SIbaUIz2yQxbyUm4dVKJTFgth0cRdXcJiQ91DtbUuVyQcRPYOQT8n/Xo0dJXFL/sHa
        FU5FTDjcxfXXUr2DJfrcA8wG6rwarWsKDkwjh
X-Received: by 2002:a05:6602:2ac4:: with SMTP id m4mr9417471iov.41.1614973397020;
        Fri, 05 Mar 2021 11:43:17 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzRti/6PN80lnfkcc8L4thNg4GE5y+1DARBphAugJp3n7Y4w00Ph3I9vsg0HYbQM1PMiEpnPudM0WtuukLuuHk=
X-Received: by 2002:a05:6602:2ac4:: with SMTP id m4mr9417463iov.41.1614973396855;
 Fri, 05 Mar 2021 11:43:16 -0800 (PST)
MIME-Version: 1.0
References: <20210304205728.34477-1-aahringo@redhat.com> <20210305030437.GA4268@salvia>
In-Reply-To: <20210305030437.GA4268@salvia>
From:   Alexander Ahring Oder Aring <aahringo@redhat.com>
Date:   Fri, 5 Mar 2021 14:43:05 -0500
Message-ID: <CAK-6q+iBhzFVgm5NQaPCZhJ8tEvVVeTt2OAEGH4QkOfHqfYzaA@mail.gmail.com>
Subject: Re: [PATCH resend] netlink.7: note not reliable if NETLINK_NO_ENOBUFS
To:     Pablo Neira Ayuso <pablo@netfilter.org>
Cc:     fw@strlen.de, netdev@vger.kernel.org, linux-man@vger.kernel.org,
        David Teigland <teigland@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Pablo,

I appreciate your very detailed response. Thank you.

On Thu, Mar 4, 2021 at 10:04 PM Pablo Neira Ayuso <pablo@netfilter.org> wrote:
>
> Hi Alexander,
>
> On Thu, Mar 04, 2021 at 03:57:28PM -0500, Alexander Aring wrote:
> > This patch adds a note to the netlink manpage that if NETLINK_NO_ENOBUFS
> > is set there is no additional handling to make netlink reliable. It just
> > disables the error notification.
>
> A bit more background on this toggle.
>
> NETLINK_NO_ENOBUFS also disables netlink broadcast congestion control
> which kicks in when the socket buffer gets full. The existing
> congestion control algorithm keeps dropping netlink event messages
> until the queue is emptied. Note that it might take a while until your
> userspace process fully empties the socket queue that is congested
> (and during that time _your process is losing every netlink event_).
>
> The usual approach when your process hits ENOBUFS is to resync via
> NLM_F_DUMP unicast request. However, getting back to sync with the
> kernel subsystem might be expensive if the number of items that are
> exposed via netlink is huge.
>
> Note that some people select very large socket buffer queue for
> netlink sockets when they notice ENOBUFS. This might however makes
> things worse because, as I said, congestion control drops every
> netlink message until the queue is emptied. Selecting a large socket
> buffer might help to postpone the ENOBUFS error, but once your process
> hits ENOBUFS, then the netlink congestion control kicks in and you
> will make you lose a lot of event messages (until the queue is empty
> again!).
>
> So NETLINK_NO_ENOBUFS from userspace makes sense if:
>
> 1) You are subscribed to a netlink broadcast group (so it does _not_
>    make sense for unicast netlink sockets).
> 2) The kernel subsystem delivers the netlink messages you are
>    subscribed to from atomic context (e.g. network packet path, if
>    the netlink event is triggered by network packets, your process
>    might get spammed with a lot of netlink messages in little time,
>    depending on your network workload).
> 3) Your process does not want to resync on lost netlink messages.
>    Your process assumes that events might get lost but it does not
>    case / it does not want to make any specific action in such case.
> 4) You want to disable the netlink broadcast congestion control.
>
> To provide an example kernel subsystem, this toggle can be useful with
> the connection tracking system, when monitoring for new connection
> events in a soft real-time fashion.
>

Can we just copy paste your above list and the connection tracking
example into the netlink manpage? I think it's good to have a
checklist like that to see if this option fits.

> > The used word "avoid" receiving ENOBUFS errors can be interpreted
> > that netlink tries to do some additional queue handling to avoid
> > that such scenario occurs at all, e.g. like zerocopy which tries to
> > avoid memory copy. However disable is not the right word here as
> > well that in some cases ENOBUFS can be still received. This patch
> > makes clear that there will no additional handling to put netlink in
> > a more reliable mode.
>
> Right, the NETLINK_NO_ENOBUFS toggle alone itself is not making
> netlink more reliable for the broadcast scenario, it just changes the
> way it netlink broadcast deals with congestion: userspace process gets
> no reports on lost messages and netlink congestion control is
> disabled.
>

Just out of curiosity:

If I understand correctly, the connection tracking netlink interface
is an exception here because it has its own handling of dealing with
congestion ("more reliable"?) so you need to disable the "default
congestion control"?
Does connection tracking always do it's own congestion algorithm, so
it's recommended to turn NETLINK_NO_ENOBUFS on when using it?

Thanks.

- Alex

