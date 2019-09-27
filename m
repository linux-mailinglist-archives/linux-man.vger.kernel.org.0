Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 69C84BFF34
	for <lists+linux-man@lfdr.de>; Fri, 27 Sep 2019 08:37:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725804AbfI0Ghp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 27 Sep 2019 02:37:45 -0400
Received: from mail-ed1-f65.google.com ([209.85.208.65]:43707 "EHLO
        mail-ed1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725769AbfI0Ghp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 27 Sep 2019 02:37:45 -0400
Received: by mail-ed1-f65.google.com with SMTP id r9so1312998edl.10
        for <linux-man@vger.kernel.org>; Thu, 26 Sep 2019 23:37:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=0NsNt7JNJ0TyVPoe3/Hk57EdCDt5zxUp8rgDsUl2Et8=;
        b=FjA45/SAsG4sVJ15HonBZsbfGpW29UJmVIrt/1bETZwISqVmFuJT4Xc0cX61JwYz1M
         T3Zf4TkgrhPbzthMFDj9C6RGu0fMTsgNAX+2lQ3US8gBRNcF8+V7qeL1rfQ0Uh30pZNp
         szhqjiSyrMHNk7jP2p4AVF+JDKbmPsyJqxCkb/9kB9HWAdf/+6pvOE9wVy4cTTLYbqGY
         balFqL4OGWf2qncvQvjQX3rtTsxA+7WlCSwAJor1hot+Dq5zotfAXR1cjwfeVCc3KILC
         7pnCAiO/PPs/tc/+cUCpsVDrYT5VtA/+N5pvVSLJqdE+t5MoKzitpkf5yDCnKBRSS1zN
         XEDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=0NsNt7JNJ0TyVPoe3/Hk57EdCDt5zxUp8rgDsUl2Et8=;
        b=FfoWeZkfSzKJ9HGKsC9lajj+5vApirpq87G/1YFqFxUwHrhj+qRRUaZJ1cTBohBbfi
         Ve0ycGTqCcw9745qGn6fbRCulhZ8hVhnCPcziLiZAwdfeTO84TpLYEhK+ZKnGqMLg7ZO
         FI6SYRhKoKsKG/Hqr7yOcTwNnzGjDdwGzmgVbBYQ2p/jpMrHuMEemWzoKRzpbPU8d5w2
         FhN+lAMyBxkiciWh26mjEGQAbhxbVze7+gHIgsm0Y/dtIpofp7Q6EbtnIMzXRRHU1AnK
         7zjzFrx1YCcmd51JghJXqdhIJ62GV5kwC5rGKBMB5Rp47ClcLERB8jFHMMhv1AgFXOQa
         sw0Q==
X-Gm-Message-State: APjAAAVZBk3l3XemHX3KGdO55p9f9kAxbVAoY/DkK84rGGbCcE+16Xe9
        Xgi2bviHlYNceucCX1K11RK7GuLqJw+iQxIg2Ee8AA==
X-Google-Smtp-Source: APXvYqxWOnmZUw2xzJJY1m0QAHLlbMxh/EMBOdD+DVzaij4wMlkJ8+b+zRYTLdrXwed0nzz+vHaLEcq6R8bIBxlTslE=
X-Received: by 2002:a05:6402:1858:: with SMTP id v24mr2746853edy.130.1569566263689;
 Thu, 26 Sep 2019 23:37:43 -0700 (PDT)
MIME-Version: 1.0
References: <CAGkTAxsV0zS_E64criQM-WtPKpSyW2PL=+fjACvnx2=m7piwXg@mail.gmail.com>
In-Reply-To: <CAGkTAxsV0zS_E64criQM-WtPKpSyW2PL=+fjACvnx2=m7piwXg@mail.gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Fri, 27 Sep 2019 08:37:31 +0200
Message-ID: <CAKgNAkjSC2V3-i+d7Ga_pB3F=65zBaK48WF4xmKiohakOsCSBA@mail.gmail.com>
Subject: Re:
To:     nilsocket <nilsocket@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello

On Fri, 27 Sep 2019 at 08:26, nilsocket <nilsocket@gmail.com> wrote:
>
> In http://man7.org/linux/man-pages/man2/epoll_pwait.2.html#NOTES ,
> through out this section `epoll_wait()` is used. but only once
> `epoll_pwait()` is used, I think it's a typo mistake.
>
> Current:
> While one thread is blocked in a call to epoll_pwait()
>
> Expected Change:
> While one thread is blocked in a call to epoll_wait()

Thanks. Fixed!

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
