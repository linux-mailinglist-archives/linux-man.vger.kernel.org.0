Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 258D11B4D9F
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2020 21:49:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726087AbgDVTt4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 22 Apr 2020 15:49:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39028 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725779AbgDVTtz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 22 Apr 2020 15:49:55 -0400
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com [IPv6:2a00:1450:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACBDEC03C1A9
        for <linux-man@vger.kernel.org>; Wed, 22 Apr 2020 12:49:55 -0700 (PDT)
Received: by mail-ed1-x541.google.com with SMTP id s10so2476092edy.9
        for <linux-man@vger.kernel.org>; Wed, 22 Apr 2020 12:49:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=ZzW234Cpsq4PT9Yd6VzjFbGbmKGMCIugbH6bU9Heg9k=;
        b=JpgQa8PtJog8CUKQ6lEJE+yhvMsAUj/EVv85XzG6s29AyhpF2S8V+eJ12/yO1qES+i
         uLBiiJprnZ+4pyeczUxtWf9I8A0yyHOWUorvqH02msG8DGaDkYPM3xZod3goxFOaXFDG
         liRvAM8N6YqG0uWnu3FMJazSmG50jaJumOcfiNUIgwqPFEha2LW+Udn8vi7TELYJ9FhN
         A7aTBERnBHsjKRcmubBCDE4Gj8b5LrwPz8Q7YYcZtdwxSSEOH7Ey/QUn1uFQAvFjcBKp
         PJdolr1cqBXV4Xo5fVN4sYom3TFnUoh9A5xwIMJVNfiWpiX/fpXPwJ5TeiqkI1uSCkeC
         Yk2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=ZzW234Cpsq4PT9Yd6VzjFbGbmKGMCIugbH6bU9Heg9k=;
        b=fH13zj2k5Wv9ip8qrQVpAvsX8aYfU9h9O7ThOHE+wOR/77t3WNiEJIW2nOW9mhuIYY
         NFNGH5AUuzn6I+bgXrliZGibDDjlv3tuO+13KUo4owLOu19e4p0QzDLWqi9oRT5QRSVz
         5r3YYdG23HxV5NaWl6ykc1UwGioan8xKKH8lTl4svydFL3kiGRnMdP3onHaYNLuNgKWL
         zI8BmLvc9mXk7fKJ2brXdcd91CS6+ph0wFfftaMSTL1gCABmbPaTtGYin7w4OD5Yaqsm
         rNxeLLbFd4ZDsQUO7vhEx9UCl8MVEi4Sl6BLKH9iqQ7mQxH6QH2QUSrIdjHpgX0XwKEV
         U/FA==
X-Gm-Message-State: AGi0PuZvuJQDjjpDaDX4QRoZj9flIPKgk+cB3fRfK9a5eUZN9fWw+rmq
        QLvwSg9Q3lEvxGFkiqS+kMkmCiUALFTROsI8wEK86w==
X-Google-Smtp-Source: APiQypIYPvi7v8vZspmNduabQzJcC6YGJ9OWEMwy0bb6GbLymOHkfTyTHtKkGRqtOHm3UxbMZTg5797vuVaFukAFnkM=
X-Received: by 2002:aa7:d513:: with SMTP id y19mr190780edq.367.1587584994331;
 Wed, 22 Apr 2020 12:49:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200419064753.GA30168@Debian-50-lenny-64-minimal>
 <9f143ac0-5b2e-7f75-249a-8fa93cbec55d@gmail.com> <20200422193548.GF26557@Debian-50-lenny-64-minimal>
In-Reply-To: <20200422193548.GF26557@Debian-50-lenny-64-minimal>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Wed, 22 Apr 2020 21:49:43 +0200
Message-ID: <CAKgNAkgDaQ7Gj-OmfJezc9sxdbqd+NwFtLUmjSc_C8Z0zqeK1g@mail.gmail.com>
Subject: Re: Errors in man pages, here: console_codes(4): Punctuation
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, 22 Apr 2020 at 21:35, Helge Kreutzmann <debian@helgefjell.de> wrote:
>
> Hello Michael,
> On Mon, Apr 20, 2020 at 08:59:00AM +0200, Michael Kerrisk (man-pages) wrote:
> > On 4/19/20 8:47 AM, Helge Kreutzmann wrote:
> > > **
> > >
> > > s/, and CAN/. CAN/
> > >
> > > "If we have a control character, it is acted upon immediately and then "
> > > "discarded (even in the middle of an escape sequence)  and the escape "
> > > "sequence continues with the next character.  (However, ESC starts a new "
> > > "escape sequence, possibly aborting a previous unfinished one, and CAN and "
> > > "SUB abort any escape sequence.)  The recognized control characters are BEL, "
> > > "BS, HT, LF, VT, FF, CR, SO, SI, CAN, SUB, ESC, DEL, CSI.  They do what one "
> > > "would expect:"
> >
> > I think the existing text is okay. What's the problem?
>
> I assume the translator aimed for shorter sentences. But here the
> sentences are not to long, so I can perfectly understand if you keep
> the text as is.
>
> I'll remove the comment.

Okay.

Thanks,

Michael
-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
