Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8D013F9C6B
	for <lists+linux-man@lfdr.de>; Tue, 12 Nov 2019 22:41:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726906AbfKLVlL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 12 Nov 2019 16:41:11 -0500
Received: from mail-lj1-f195.google.com ([209.85.208.195]:44412 "EHLO
        mail-lj1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726799AbfKLVlK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 12 Nov 2019 16:41:10 -0500
Received: by mail-lj1-f195.google.com with SMTP id g3so93754ljl.11
        for <linux-man@vger.kernel.org>; Tue, 12 Nov 2019 13:41:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=OV6ZmEouB8EpFsQwpaJn8MPmls3ppvTyLnV6v7kfCew=;
        b=cBMcGtvHi+kEqmmwgkaVdWJyn/kGyHGtV5NmO2eh7eZetQcC5RcLAweu/w+2MVRx3R
         2BVw3jb1SQA7/dTxwIk8iCxXv24XWmR1CJBFYWIWfUSTkCyImT9A7OWTVpN5xoz0Wsu9
         1a6THnt0EdDa2TjZVlZAGUrKjgE8FgmiBge4rpMshdO7xj+LlA8WPV2qnyja0N39hylR
         zhNaM2jHV4qDs36iQz2YqCvTcIrBt+XHqPDidwTjkWDgb1161+1uv51nv1sAr6lFSctv
         tDzFPZofuToAjadwg4j+fbn2AfK8Cdi71IALkNRHkpLmWPTt12QsQpGH0b/zd72hWAFX
         TCpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=OV6ZmEouB8EpFsQwpaJn8MPmls3ppvTyLnV6v7kfCew=;
        b=gyebx6962MOAc3ThghSn4CzUy+CaS58WvfngCJK8bd/6PGLFGj9q3dxLkIQXvSbJE7
         O80riEnkaVJGN5r0V/veh0+ozb3A9qyS9YilskEq5PNziXcMc2/DDFGDxySJ1cF/wqxw
         3427CsgKhlXbe+jGfwmEwrCSqMtLQsMs+U8pn6LyuOUA8u/3mgLnB14WrCtpLdTG2Xsp
         ibmZMDy7ePyq4unP2WfGa/sLzLMxXOQk7oX5HRunHe5E2iB9z7bwE5Ytcoei4GRyV+tY
         FMfu42ZT2bgJgtMf5gK1IfnCE8JALkDgV6VMJhuk0K4Atobfda7WhpcnDINxkiMZp5gf
         LANg==
X-Gm-Message-State: APjAAAWzZImUn6awzfUvc1Ztoeclx1G9KBY3UuVCrZzFDBEgL9WtwoL7
        1shgnl0iQG9IBR3zVDHsq0BASoBUFgaZjAFAxRdauABrFto=
X-Google-Smtp-Source: APXvYqxmFQfTt/a/MCMWcUD1VOKQuFC20YdX+b9DoEvED9ehveLw4NWQuscJAzbVd3pjaCnYHT+Ri6dnmzCzT/fkIOA=
X-Received: by 2002:a2e:9c8f:: with SMTP id x15mr10825115lji.204.1573594867731;
 Tue, 12 Nov 2019 13:41:07 -0800 (PST)
MIME-Version: 1.0
References: <CAJgzZoojiRmTV_5sAXhqQciAKsQ_d+znT1OnxT0Rpa_-N_G5-Q@mail.gmail.com>
 <87imnodbct.fsf@mid.deneb.enyo.de>
In-Reply-To: <87imnodbct.fsf@mid.deneb.enyo.de>
From:   enh <enh@google.com>
Date:   Tue, 12 Nov 2019 13:40:54 -0800
Message-ID: <CAJgzZoo+oSkwgCZ3CMUdP-t+Y4h4PkvJO-As15kjz0Ad+nx9fA@mail.gmail.com>
Subject: Re: [PATCH] pthread_kill.3: Update to match POSIX.
To:     Florian Weimer <fw@deneb.enyo.de>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, Nov 12, 2019 at 1:38 PM Florian Weimer <fw@deneb.enyo.de> wrote:
>
> * enh:
>
> > POSIX removed ESRCH years ago.
> >
> > In resolving http://austingroupbugs.net/view.php?id=1214 it was made
> > clear that callers can't rely on using signal 0 to test for the
> > continued existence of a thread. Update the man page to make it clearer
> > that this doesn't generally work (even if it sometimes seems to).
> >
> > See also the long explanation of why this is the case (and how to fix
> > your code) here:
> >
> > https://android.googlesource.com/platform/bionic/+/master/docs/status.md#invalid-handling-targetsdkversion-o
>
> Well, if you fix the thread exit race (like musl did, and glibc should
> as well, see bug 12889), you could get a reliable ESRCH as a side
> effect.  Pity that POSIX doesn't allow that.

this isn't about the tid stored *in* the object that the pthread_t points to.

like i (briefly) said in the commit message, this is because a
pthread_t is a pointer, so if you have an old pthread_t that's been
recycled... boom!

> I think this might be a case where common (but not unavoidable)
> implementation problems get in the way of a better standard.  Usually,
> it's the other way round.
