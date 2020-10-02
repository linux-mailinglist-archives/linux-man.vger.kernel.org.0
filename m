Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A4FD92813BF
	for <lists+linux-man@lfdr.de>; Fri,  2 Oct 2020 15:09:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726386AbgJBNJP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 2 Oct 2020 09:09:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42128 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726017AbgJBNJP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 2 Oct 2020 09:09:15 -0400
Received: from mail-il1-x142.google.com (mail-il1-x142.google.com [IPv6:2607:f8b0:4864:20::142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33CB3C0613D0
        for <linux-man@vger.kernel.org>; Fri,  2 Oct 2020 06:09:14 -0700 (PDT)
Received: by mail-il1-x142.google.com with SMTP id t12so1174629ilh.3
        for <linux-man@vger.kernel.org>; Fri, 02 Oct 2020 06:09:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=LpA9EfuQyfJo2yNry3jUeMDT8BlBUS2f894XglfPgRs=;
        b=qh4EerQoMdB59vVzE73rVYwoYHq7aRj31MAa0znByePaxvlLmf3WZ3MsKARl6q5iiI
         SewFdoja84xkcjqqIox2UaE3wVvHaPwsMdJ5Y6Pl3TJBQBKaoW24MYXKEKGsUNciWBGN
         FPVqYeWOKtdyAXpxBSMOJl9wwJxJ2Ve2uz2PrH8KDlE7juvQHZLU40rYFl9i26IEZtVj
         PyL6b3bu6ttg/D2dVjgW6OjLekdrSAk3RC+DHQjJG8FfcBnAzf6+gQVsGqGFjctQ4P8o
         Btf+P0wXWi/HCvc0gDTumRjmNHRWfyl78bqXy17ETIhyORC8XSqhk5a5SkqTiWx8XiIU
         cgxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=LpA9EfuQyfJo2yNry3jUeMDT8BlBUS2f894XglfPgRs=;
        b=qOSenfaKSKTH0V4pL7bgeXC/lbdcRzF4pGKxPxkLbx4NnsOfJ7MEasj0FyQhSW38qS
         RiheSQNxIfDHQ477dsH5O2F+/FfWbKJy2lbLj5nP7uivJ5mnPBmzep5XBBxUHZNNHi/i
         uXaeUhQMoXzMHpXjJPctfKkcQn+9b4b3g5COvpuu5U3am651xdNujE8HbGSWmhs0Oeln
         B4D1frhd9OTBbKKdh7VjGZJoSFNuc1HJ6t1rwffdA5GgpIzgPlDPKx7QBv971+tjZWAn
         pqhMwzXvQlRBrAlKFZYVEvL75605JUluIzsA2UU51CQmhMadC/q/+3T2UTVfS1FjjqI2
         7Y9g==
X-Gm-Message-State: AOAM530fzBDskM8/EcGsR+O3dWrml4Ki2qmJdgC2Yjsmykbk8nW+alId
        DREw4uAh/cbLxyEgpQWRNyt8cj2S3QZ2UuZmoTs=
X-Google-Smtp-Source: ABdhPJztO/sc6KsW9XIYX6nt+MZsigA07wPFxkADjHK+ROIVmbBNQblhpxQFUGyuILjCFQjHFmUl6U+2u5fJnF9Dp4U=
X-Received: by 2002:a92:9f56:: with SMTP id u83mr1710555ili.30.1601644153586;
 Fri, 02 Oct 2020 06:09:13 -0700 (PDT)
MIME-Version: 1.0
References: <20201001143535.98990-1-colomar.6.4.3@gmail.com>
 <20201001143535.98990-2-colomar.6.4.3@gmail.com> <b116e906-2a5d-1a7e-2969-52036ab3e8c3@cs.ucla.edu>
 <f6711dc6-acd8-257d-811d-75aa4d4a60fe@gmail.com>
In-Reply-To: <f6711dc6-acd8-257d-811d-75aa4d4a60fe@gmail.com>
From:   Jonathan Wakely <jwakely.gcc@gmail.com>
Date:   Fri, 2 Oct 2020 14:09:02 +0100
Message-ID: <CAH6eHdSWkL6LOfvUn8M4wY+Y7UFADfCeE91g5SPAqkEr8w9GxA@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] system_data_types.7: Add int_leastN_t family of types
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     Paul Eggert <eggert@cs.ucla.edu>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>,
        "gcc@gcc.gnu.org" <gcc@gcc.gnu.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, 2 Oct 2020 at 09:36, Alejandro Colomar via Gcc <gcc@gcc.gnu.org> wrote:
>
> Hi Paul,
>
> On 2020-10-01 19:38, Paul Eggert wrote:
>  > On 10/1/20 7:35 AM, Alejandro Colomar via Libc-alpha wrote:
>  >> +The narrowest signed integer type
>  >> +of a width of at least N bits,
>  >
>  > Motivation is missing here. Why is there an int_leastN_t type at all?
>
> Well, I'd say the motivation is for the standard to allow
> unicorn implementations that have types that are not of normal widths
> For example, this allows an implementation to have an int of 33 bits,
> have int_least32_t be that int, and then not provide int32_t.

C allows that, but POSIX says int32_t is required.
