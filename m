Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2CDB21ECD7E
	for <lists+linux-man@lfdr.de>; Wed,  3 Jun 2020 12:26:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725888AbgFCK0Y (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 3 Jun 2020 06:26:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46794 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725854AbgFCK0X (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 3 Jun 2020 06:26:23 -0400
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com [IPv6:2a00:1450:4864:20::544])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53239C08C5C0
        for <linux-man@vger.kernel.org>; Wed,  3 Jun 2020 03:26:23 -0700 (PDT)
Received: by mail-ed1-x544.google.com with SMTP id p18so1286436eds.7
        for <linux-man@vger.kernel.org>; Wed, 03 Jun 2020 03:26:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=K7E07vrAOsUMYnfUPvdCjsh86G6z1tMem1U690Z96iE=;
        b=Plt4t97fif3XtYaXvYB8ZOZVEmp07MeARF7HhW+iYaD2mBghiudeL/noB//hw1S8T3
         75V2rtIEJJ5SA7iy1Qjm/Epybwvlr9/XG9p8HECh3n3iITv9XvKqI19mbhEhpoqzdecB
         iOgz6Koo8T9xGpgUH99m46Yd81Cqo0VcfUV2NeiStYtGKw0F16pgMTGU2SrADShemRTF
         cojfsm9ELIT7M5jqY/CB0bsGIGj64eU6a7JrcAIn4sRdI00Muz3l/Zh01CJHHZA9Idn5
         D+pTNKyEurJTdMWXuR1Q13nl7GU8vppvMhrX5YCDzkwi2o7BVuHO0X01EFe/FL/CONxl
         Ebkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=K7E07vrAOsUMYnfUPvdCjsh86G6z1tMem1U690Z96iE=;
        b=sbDGp7KY9dHWCpxTa0ddKcvYXATxtCBZ3e8XabhUdnwPoBx7nSi8mDzTkvqkGT9CKp
         RTRoGcACPxIS821gKRLxPzwZAeFSF1io+TdzbQr6/C7KM15JO4OJGoaYGOz0+ef4svmL
         X/3HxOwzl4aMmCfKNQ1bX186HIYPO5s3cHqG5poIkTVeial8zVT+PB+3a8MUjo/75VF8
         9iimjVKpKgWS8zQieSUNCE++UMO0xHqhb2AX76oMbBq68YcPxWYBsvnaQRKdM318aP6h
         hdN7KOrefb1n8+Fjnex1ahd1wan3Fjzrbe7XAOB4S4E5zC4GqC3vi4ZIlABYYnVQB73D
         R08w==
X-Gm-Message-State: AOAM532ZfdakUsKp9ijYol4wAR8JT3XUL/RSNDg2duaH9/JK7bOx0t32
        DVRT/r00r8tTAq2JS+CE32wYdlcFdlp3UELe7uo=
X-Google-Smtp-Source: ABdhPJwIwbs1HL/TYROJBrulHrPdUeh3swgxuWt1ccTXFB8LJar/3K+st9SL3QqrUnRN3o6gNzNNvOyj1QBIVLbTJGQ=
X-Received: by 2002:aa7:c71a:: with SMTP id i26mr18007709edq.149.1591179981963;
 Wed, 03 Jun 2020 03:26:21 -0700 (PDT)
MIME-Version: 1.0
References: <20200529092530.25207-1-amir73il@gmail.com>
In-Reply-To: <20200529092530.25207-1-amir73il@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Wed, 3 Jun 2020 12:26:10 +0200
Message-ID: <CAKgNAkgfrSbAnCV=JJWh3ELH9PDTjidn=cJ4s77gtffdj5hU-w@mail.gmail.com>
Subject: Re: [PATCH 0/3] fanotify man page updates for final v5.7
To:     Amir Goldstein <amir73il@gmail.com>
Cc:     Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <mbobrowski@mbobrowski.org>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, 29 May 2020 at 11:25, Amir Goldstein <amir73il@gmail.com> wrote:
>
> Hi Michael,
>
> We made a last minute call to disable the FAN_DIR_MODIFY for v5.7.
> Here is a man page update with some promissed cleanups.

Thanks, Amir. I'll just hold off a little longer on processing these,
in case there are Acked-bys / review comments.

Cheers,

Michael

> Amir Goldstein (3):
>   Revert "fanotify.7, fanotify_mark.2: Document FAN_DIR_MODIFY"
>   fanotify_init.2: move out of place entry FAN_REPORT_FID
>   fanotify.7, fanotify_mark.2: Clarify FAN_ONDIR in output mask
>
>  man2/fanotify_init.2 | 60 ++++++++++++++---------------
>  man2/fanotify_mark.2 | 50 ++----------------------
>  man7/fanotify.7      | 91 ++++++++++++++------------------------------
>  3 files changed, 61 insertions(+), 140 deletions(-)
>
> --
> 2.17.1
>


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
