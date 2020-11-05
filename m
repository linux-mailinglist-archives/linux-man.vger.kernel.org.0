Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D1FEC2A892A
	for <lists+linux-man@lfdr.de>; Thu,  5 Nov 2020 22:37:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731860AbgKEVhW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Nov 2020 16:37:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730973AbgKEVhV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Nov 2020 16:37:21 -0500
Received: from mail-oo1-xc2e.google.com (mail-oo1-xc2e.google.com [IPv6:2607:f8b0:4864:20::c2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9E1EC0613CF
        for <linux-man@vger.kernel.org>; Thu,  5 Nov 2020 13:37:21 -0800 (PST)
Received: by mail-oo1-xc2e.google.com with SMTP id i13so688421oou.11
        for <linux-man@vger.kernel.org>; Thu, 05 Nov 2020 13:37:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=kq8W/kDUjZsLSa0NWRv66kt64G2wQTR2nKs0a1FgcMs=;
        b=MoPEel4IwS7z35UU2c1QA/WEF4Dj/ewn4+DYYWg45Gtc6RKX+lo5hHYy6JHiWTRXeb
         oBpuV/I8q0QPlFWn9Hwyw2eiDG4dgsE3/A8aoCWcMKb6OvvaGX1ziHtFlZ3zfFu+q2Gq
         ED7wAGpt+nvO8De7rZpbjuv4C0x4DfyZlcSuDBe8rs+rUJurJrVK71YPGwY64gQ/rHim
         mFBbcsYWuay3WBLBBz9sLi9pXD5ELe8zHYxADhHTMEm5UMFbblYtMR0bVVXAWaKUjvT8
         QFDMhWefcd9YcmvGRoe750YVJbXeQBJTJN0eEQFc5yA4jnDi3JRpdhFWS48vSpwQJVFx
         afvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=kq8W/kDUjZsLSa0NWRv66kt64G2wQTR2nKs0a1FgcMs=;
        b=bkczsL1IodKXi9Ef2Obxoty9WbdUYsb5idEb8quIijziwjyC5Wvp1GfTUAn7wM45m2
         K4E3ZKSAgzULCRdxWd7V2DxBijZbwy6xsqWg6j0GSKupzM3jrpBZj5yFGgjMrTH1fIgQ
         bb8TOUboZcUks3koZUXIXatdJ6lWKvQeObtLbgNp2ZyeIUALDTsy9Ajhpel8sPuh0V5G
         1n7AA415W+D9WNZtwmtU6lgTjKM8Zb25ILkZ2pnhdS3NF/z+RORR13v3oV4vETg26rrd
         VQOl62n3Jo2y9b6g3M/w2rBDSfj78AzJruQXwMztyigllPXpg+koWd0+eo3wJwX6Kllu
         pW9A==
X-Gm-Message-State: AOAM532yqQQLifevRlXXlNUVxeNnKH/baoIc+xeb3U9AHDJb11RYCcDF
        RxqYwtW7cvHW5Jb00a8SyAyQE2FCR5Y7fJAcNow=
X-Google-Smtp-Source: ABdhPJxFeUpaYjW0DbkXqdqmxQ1C6InJlfwRGs5LSzAdAKhBlhELIeW06rWugbCBPB3jx4ox0SX1f88O7u0XX76WE6U=
X-Received: by 2002:a4a:dd0a:: with SMTP id m10mr3235291oou.80.1604612241121;
 Thu, 05 Nov 2020 13:37:21 -0800 (PST)
MIME-Version: 1.0
References: <f4a93b8c-8136-113b-d39d-72df43381fd9@gmail.com>
 <CAKgNAkhe-YN9MF2epm8_Qqi0b2Vp+YkrURQHduYz8+B6KfMiQQ@mail.gmail.com> <eb1afb92-9327-43e4-c4bf-6593289c9c3d@gmail.com>
In-Reply-To: <eb1afb92-9327-43e4-c4bf-6593289c9c3d@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Thu, 5 Nov 2020 22:37:10 +0100
Message-ID: <CAKgNAkiWYUM1qg2HPRczMyd6hQFjhxPAcyRadOGZ6HLNeHuw1A@mail.gmail.com>
Subject: Re: Format inline code
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On Thu, 5 Nov 2020 at 15:59, Alejandro Colomar <colomar.6.4.3@gmail.com> wrote:
>
>
>
> On 2020-11-05 12:36, Michael Kerrisk (man-pages) wrote:
> > So, suppose I want to produce output as follows, where XXXXXXXXX is
> > the start of a hanging list (.TP):
> >
> > [[
> > xxx(2)                     System Calls Manual                     xxx(2)
> >
> >         XXXXXXXXXX
> >                Lorem  ipsum  dolor  sit amet, consectetur adipiscing elit,
> >                sed do eiusmod tempor incididunt ut labore et dolore  magna
> >                aliqua.  Ut enim ad minim veniam, quis nostrud exercitation
> >                ullamco laboris nisi ut aliquip ex ea commodo consequat.
> >
> >                    int
> >                    main(int argc, char *argv[])
> >                    {
> >                        return 0;
> >                    }
> >
> > zzz                                yyy                             xxx(2)
> > ]]
> >
> > The way I currently produce that is markup something like:
> >
> > [[
> > .TH xxx 2 yyy zzz
> > .TP
> > XXXXXXXXXX
> > Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
> > eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
> > enim ad minim veniam, quis nostrud exercitation ullamco laboris
> > nisi ut aliquip ex ea commodo consequat.
> > .IP
> > .in +4n
> > .EX
> > int
> > main(int argc, char *argv[])
> > {
> >      return 0;
> > }
> > .EE
> > .in
> > ]]
> >
> > Downside: in the above, I need to know whether to use .IP or .PP,
> > depending on whether I'm currently in an indented text block.
> >
> > I think you are suggesting that instead, I could do something like:
> >
> > [[
> > .TH xxx 2 yyyyy zzzzz
> > .TP
> > XXXXXXXXXX
> > Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
> > eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
> > enim ad minim veniam, quis nostrud exercitation ullamco laboris
> > nisi ut aliquip ex ea commodo consequat.
> > .RS
> > .PP
> > .RS +4n
> > .EX
> > int
> > main(int argc, char *argv[])
> > {
> >      return 0;
> > }
> > .EE
> > .RE
> > .RE
> > ]]
> >
> > I agree that this works, and has the virtue that I can consistently use
> >
> > .PP
> > .RS +4n
> > .EX
> > ...
> > .EE
> > .RE
> >
> > everywhere. The downside is that I have to add an extra .RS/.RE pair,
> > and that's quite a bit of mark-up to add each time (to a construct
> > that is already quite mark-up heavy). I don't totally object to the
> > extra mark-up, but it would be nice if there was a way to accomplish
> > the desired result (consistent mark-up everywhere) without requiring
> > su much mark-up.
>
> Hi Michael,
>
> On one hand, yes, it adds some lines of markup, i.e., a bit of noise.
> On the other hand, I just see .RS/.RE as {/} in C scopes:
> they clearly delimit logic blocks of text,
> and also help in greatly reducing the quantity of .IP needed,
> needing only .PP for most things, which simplifies logic.
>
> Choose your poison :p

So, suppose we change this. Really, what I should have written is:

[[
.TH xxx 2 yyyyy zzzzz
.TP
XXXXXXXXXX
.RS           <----- I moved this .RS
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
enim ad minim veniam, quis nostrud exercitation ullamco laboris
nisi ut aliquip ex ea commodo consequat.
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

So, any time we have a .TP block that might have inline code (or
perhaps just multiple paragraphs), then the proposal is that we write

[[
.TP
HEADWORD
.RS
...
.RE
]]

But, what about the .TP blocks that contain just a single paragraph
and no inline code? Do we omit the .RS/.RE? That's a little
inconsistent and possibly confusing. On the other hand, if we add the
.RS/.RE to such blocks, that's a lot of clutter. Do you see what I
mean? It looks like there's no simple answer here.

Thanks,

Michael
-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
