Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 22DDF262B11
	for <lists+linux-man@lfdr.de>; Wed,  9 Sep 2020 10:57:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726226AbgIII5W (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Sep 2020 04:57:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43008 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725917AbgIII5U (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Sep 2020 04:57:20 -0400
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com [IPv6:2607:f8b0:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8F06C061573
        for <linux-man@vger.kernel.org>; Wed,  9 Sep 2020 01:57:20 -0700 (PDT)
Received: by mail-ot1-x342.google.com with SMTP id g96so1624499otb.12
        for <linux-man@vger.kernel.org>; Wed, 09 Sep 2020 01:57:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding;
        bh=YLOHojNaVJopgOLqBY/yRShqZx3zxac2SxSO6YSfmcQ=;
        b=AuZ0drU6N5y5Qw57SympZyWpwEYE4J1swZh88DiUnI3a1xzEaoi723uV1X1w8MUp8T
         Z8eiEnFE0tIrJ3sy+puhar5qK9oEA5UT7eSe5TggfdvTMr7jhrHwiMGPV+K0eItRaLhk
         K/3VTUHNqMy6+SQNhbCrPP0Frp1ZWEVPH+5h2qkRhWN3a46ZvUN8R4X8rtktsf+bEXYZ
         gm2uKCfXUY7ErD6z2vpmG2n1JTDmvtiPWy5PGkfL3X4d7EadbiUNC0wWFcYoNC3ufxej
         wT+peidJb6fwDOs7Ajw8NkwZ+E/NRV2+AN2ZhvEvt1XSTMSDR2PsB10Rq9Wk3FMKNMyt
         rSFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc:content-transfer-encoding;
        bh=YLOHojNaVJopgOLqBY/yRShqZx3zxac2SxSO6YSfmcQ=;
        b=jRk9CIU+MCUhVc7JFVU3f8D/T4CZMcJrVnTJO3ZnVgDRUW83oAIW7WCFiplBjZnorW
         GfRpLCll7+k7xxkMXIegPXHRw7jbe2siQK0tYJLrM5heZEppcOIvT6UdpkSDarWRkalK
         YDqSHfb/5SZtxmlBtOaLAK1E/7jiu3B8X27JQbM9j1xm2DHTTOt2O+MrsV+IcZYdmnSB
         wkhR1GqvG0Z+cZuTiVTVWbmeY6ovfvQU3FUx4B5cR0zgTkRgOJgB+QmyzIk6BHHy0vFJ
         7fPtFSe/O30tZro0UR93ujN24ypz1fitWhTD0UBy7hTEoMq3XPl1SS93IuU4E2p5zCZA
         IOig==
X-Gm-Message-State: AOAM530zwgeKTp3N/Vh4jVdBT1WbX9QtkU6YOqMQqnwkfwW/UNnbMWlw
        aQKGm81ladnp7VA5sQThNmd+AZgtjrPRGG2OLqngP1clSew=
X-Google-Smtp-Source: ABdhPJxJ9vLcY1FevBq0XeXoKo3XVrkvPn8H3uDq8ADxUnmjesqXJLJTODc3Pnycxg8XbJI3u99i/ywYcWgP4QVInyU=
X-Received: by 2002:a9d:7745:: with SMTP id t5mr20009otl.114.1599641839155;
 Wed, 09 Sep 2020 01:57:19 -0700 (PDT)
MIME-Version: 1.0
References: <1599623862-6490-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
In-Reply-To: <1599623862-6490-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Wed, 9 Sep 2020 10:57:08 +0200
Message-ID: <CAKgNAkg6pV-qP0ZJWjzfP8XaaWJkOtqt=n2TrBBiUxKrBodTHg@mail.gmail.com>
Subject: Re: [PATCH] msgop.2: Add restriction on ENOSYS error
To:     Yang Xu <xuyang2018.jy@cn.fujitsu.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Yang Xu,

On Wed, 9 Sep 2020 at 05:57, Yang Xu <xuyang2018.jy@cn.fujitsu.com> wrote:
>
> When calling msgrcv with MSG_COPY flag on 3.8 or new kernel, it will
> report EINVAL error even we have disabled CONFIG_CHECKPOINT_RESTORE.
> It also needs to specify IPC_NOWAIT flag.
>
> Signed-off-by: Yang Xu <xuyang2018.jy@cn.fujitsu.com>
> ---
>  man2/msgop.2 | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/man2/msgop.2 b/man2/msgop.2
> index 373e53aa7..e559097a7 100644
> --- a/man2/msgop.2
> +++ b/man2/msgop.2
> @@ -467,7 +467,9 @@ and the queue contains less than
>  messages.
>  .TP
>  .BR ENOSYS " (since Linux 3.8)"
> -.I MSG_COPY
> +.B IPC_NOWAIT
> +and
> +.B MSG_COPY
>  was specified in
>  .IR msgflg ,
>  and this kernel was configured without
> --
> 2.23.0

My apologies, I have a little bit of trouble to understand your commit
message, but the patch does seem to be wrong, at least as I understand
the code:

[[
#ifdef CONFIG_CHECKPOINT_RESTORE
...
#else
static inline struct msg_msg *prepare_copy(void __user *buf, size_t bufsz)
{
        return ERR_PTR(-ENOSYS);
}

...
static long do_msgrcv(int msqid, void __user *buf, size_t bufsz, long
msgtyp, int msgflg,
               long (*msg_handler)(void __user *, struct msg_msg *, size_t)=
)
{
...
        if (msgflg & MSG_COPY) {
                if ((msgflg & MSG_EXCEPT) || !(msgflg & IPC_NOWAIT))
                        return -EINVAL;
                copy =3D prepare_copy(buf, min_t(size_t, bufsz, ns->msg_ctl=
max));
...
}
]]

My reading of that code is:
if MSG_COPY && MSG_EXCEPT =3D=3D> EINVAL
if MSG_COPY && ! IPC_NOWAIT =3D=3D> EINVAL
if neither of the above: if MSG_COPY && ! CONFIG_CHECKPOINT_RESTORE =3D=3D>=
 ENOSYS

And all of that seems already to be captured in the manual page:

       EINVAL (since Linux 3.14)
              msgflg specified MSG_COPY, but not IPC_NOWAIT.

       EINVAL (since Linux 3.14)
              msgflg specified both MSG_COPY and MSG_EXCEPT.

       ENOSYS (since Linux 3.8)
              MSG_COPY was specified in msgflg, and this kernel was  con=E2=
=80=90
              figured without CONFIG_CHECKPOINT_RESTORE.

Have I missed something?

Thanks,

Michael

--=20
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
