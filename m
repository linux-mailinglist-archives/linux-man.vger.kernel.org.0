Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D325B2A7D30
	for <lists+linux-man@lfdr.de>; Thu,  5 Nov 2020 12:37:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730015AbgKELhL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Nov 2020 06:37:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45706 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730439AbgKELgh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Nov 2020 06:36:37 -0500
Received: from mail-oi1-x230.google.com (mail-oi1-x230.google.com [IPv6:2607:f8b0:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F24BC0613CF
        for <linux-man@vger.kernel.org>; Thu,  5 Nov 2020 03:36:36 -0800 (PST)
Received: by mail-oi1-x230.google.com with SMTP id d9so1348536oib.3
        for <linux-man@vger.kernel.org>; Thu, 05 Nov 2020 03:36:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=eaiqLAMahVW1WwyJ8GF8raZ2Zw7YNCNzRTOR6UEEKg8=;
        b=oWGGnB2ICGUFmpO0UGU2YugTB1HBNWhGF23t10VYnKpvybUpQ1asXGz0RD6qLCC0mK
         c0CDeY68nSmRF6itGD+8/XKeztL3+Uec+gfboU50T8vXHRaRx5GBAhkrvsiSzD8Y+leQ
         QSLq8f4mfJYVQW7CFDdktf4oiCp/BPAVy5NZWMxj2S+old5x1TcpbyJHEo8RW/qvIF93
         ilp7w49t6xSSdkPlJitJfGJqbqxsVNlQm0m3cEuMHbtEhVx+D56w/rd/Bk7btBq0zbOY
         QmBWkPBkaXBKLjAicN5oV00EVLniV/6hagVQwVyZspdZcjM9cRfM3xx4+c1AXcldfkX/
         Lnsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=eaiqLAMahVW1WwyJ8GF8raZ2Zw7YNCNzRTOR6UEEKg8=;
        b=DMGpnKN2ISVcUE86rlPKcgZivBk+p1o56xz6ao79kBju0ZmFst+RLAnOOjZLhAJQj6
         88wFAAdt4OlQv8IWq0D6XwBx1t+tLQGuDVI7NeYl9YIBCJoKkuAJbC/JtfHhvpTSJy6G
         bkaW7h49/P8/rV1GjDhTVtxM4lcQ5Etw0m7Yg65B1L4VmyGDU3fw8HhHKaYm49eR8XC+
         ds1HgPIFQDHY+h80I7BmvfSF3rGcScC5EkjZoKLO6NQ8aR7sHq8c0s80UzkmFRvEeeh6
         D/7lz8AlCyvK/jvqzrh30J/yZB/8P91Igt4Dk4JS60GBK8hB76wBJSezaNbwWgZtMbyG
         Tz0w==
X-Gm-Message-State: AOAM533kEUDvKhEgKMgDgDxiU5TMfLYrSrsWQby0Qsy4TpcSnr8WEIn3
        uD1iT0yir1MGY7ZvUVp4z8xzj7eknkcaxsalyYQ=
X-Google-Smtp-Source: ABdhPJysek8XbTYzBoAu666Ig/K8kytOtA4HgRXAE1Me/rLQ1ywQnf4KCD4YbMlFOjMjLOkK3kR2g9WykNg5FkgCVcQ=
X-Received: by 2002:a05:6808:91a:: with SMTP id w26mr1295789oih.159.1604576195588;
 Thu, 05 Nov 2020 03:36:35 -0800 (PST)
MIME-Version: 1.0
References: <f4a93b8c-8136-113b-d39d-72df43381fd9@gmail.com>
In-Reply-To: <f4a93b8c-8136-113b-d39d-72df43381fd9@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Thu, 5 Nov 2020 12:36:24 +0100
Message-ID: <CAKgNAkhe-YN9MF2epm8_Qqi0b2Vp+YkrURQHduYz8+B6KfMiQQ@mail.gmail.com>
Subject: Re: Format inline code
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,


On Thu, 5 Nov 2020 at 11:19, Alejandro Colomar <colomar.6.4.3@gmail.com> wrote:
>
> Hey Michael,
>
> I tried to reply to the old thread where we talked about it,
> but I couldn't find it.

I think it was p[robably in the thread that starts here:
https://lore.kernel.org/linux-man/f70c7f62-9d61-71aa-67cf-43501a29bccc@gmail.com/

> I think it was in a thread of some patch for system_data_types,
> so I didn't know how to filter for it :/
>
> So let's start a clean thread for that.
>
> Currently, man-pages(7) proposes:
>
> =================
> .PP
> .in +4n
> .EX
> int
> main(int argc, char *argv[])
> {
>      return 0;
> }
> .EE
> .in
> .PP
> =================
>
> I think you said that it doesn't always work.
>
> I don't agree with that:
> If you correctly use .RS/.RE instead of misusing .IP,
> I think it will work always.
>
> I mean, if you have a block that is indented,
> I propose to use .RS/.RE for the whole block,
> instead of .IP for every paragraph
> (if you use .IP, then yes,
> that construct needs to be modified to use it too).
> An implementation of what I mean is system_data_types.7.
>
> If you think it would still fail in some scenario,
> please show me.
>
> Another problem of that construct is that it uses naked .in.
> I agree with it.
>
> How about the following?:
>
> =================
> .PP
> .RS +4n
> .EX
> int
> main(int argc, char *argv[])
> {
>      return 0;
> }
> .EE
> .RE
> .PP
> =================
>
> I don't know if that syntax is correct,
> but I tried it, and it seems to work.
>
> AFAIK, it will _always_ work
> as long as blocks are correctly indented using .RS/.RE,
> and it uses man macros only.

So, suppose I want to produce output as follows, where XXXXXXXXX is
the start of a hanging list (.TP):

[[
xxx(2)                     System Calls Manual                     xxx(2)

       XXXXXXXXXX
              Lorem  ipsum  dolor  sit amet, consectetur adipiscing elit,
              sed do eiusmod tempor incididunt ut labore et dolore  magna
              aliqua.  Ut enim ad minim veniam, quis nostrud exercitation
              ullamco laboris nisi ut aliquip ex ea commodo consequat.

                  int
                  main(int argc, char *argv[])
                  {
                      return 0;
                  }

zzz                                yyy                             xxx(2)
]]

The way I currently produce that is markup something like:

[[
.TH xxx 2 yyy zzz
.TP
XXXXXXXXXX
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
enim ad minim veniam, quis nostrud exercitation ullamco laboris
nisi ut aliquip ex ea commodo consequat.
.IP
.in +4n
.EX
int
main(int argc, char *argv[])
{
    return 0;
}
.EE
.in
]]

Downside: in the above, I need to know whether to use .IP or .PP,
depending on whether I'm currently in an indented text block.

I think you are suggesting that instead, I could do something like:

[[
.TH xxx 2 yyyyy zzzzz
.TP
XXXXXXXXXX
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
enim ad minim veniam, quis nostrud exercitation ullamco laboris
nisi ut aliquip ex ea commodo consequat.
.RS
.PP
.RS +4n
.EX
int
main(int argc, char *argv[])
{
    return 0;
}
.EE
.RE
.RE
]]

I agree that this works, and has the virtue that I can consistently use

.PP
.RS +4n
.EX
...
.EE
.RE

everywhere. The downside is that I have to add an extra .RS/.RE pair,
and that's quite a bit of mark-up to add each time (to a construct
that is already quite mark-up heavy). I don't totally object to the
extra mark-up, but it would be nice if there was a way to accomplish
the desired result (consistent mark-up everywhere) without requiring
su much mark-up.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
