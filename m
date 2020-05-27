Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6CF7B1E42EA
	for <lists+linux-man@lfdr.de>; Wed, 27 May 2020 15:06:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730062AbgE0NGb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 27 May 2020 09:06:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59654 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729834AbgE0NGb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 27 May 2020 09:06:31 -0400
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com [IPv6:2a00:1450:4864:20::544])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F911C08C5C1
        for <linux-man@vger.kernel.org>; Wed, 27 May 2020 06:06:31 -0700 (PDT)
Received: by mail-ed1-x544.google.com with SMTP id k19so20192572edv.9
        for <linux-man@vger.kernel.org>; Wed, 27 May 2020 06:06:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=nWE3K2VPdjhAt41WkPXvwgbGyWLyuBwg1r5FT/oiIM8=;
        b=JYTMdD6EEGYfC/2iA+a59wruwHk5muv05uhgE5r37Ds38iR4WAsNdoBPM55xqVbfhb
         hBJIgOamhbChzvq7IUqwZeAW4s1mPx1lUZ40mUALFKOm+0C2+c1eefmfuBm6R66qXBJS
         1gLxiQmU862QkC6XlJ98BxKZhnsnsE1xO49lqVCq2LPfTb/qVTuJXBmqYoxsIa8thG9V
         drvCOXvAmghu138N7zGc6RpoeJIS1+Qc+BgCVmDj+Rj9ifDdpucIyJksTWxzclB2rB8r
         2WFX7SAbc7laDDA5qWgm/vEdEopmH5reaXCJSDXcTmmwHudoyNNQbxegdFKTSWZH8pQH
         o3bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=nWE3K2VPdjhAt41WkPXvwgbGyWLyuBwg1r5FT/oiIM8=;
        b=n7t5CMrlBDhjLUylret/X9o/1WGDw5c/vxwLQsogOWTg/zBw8RRbIp0mf47gJXBegL
         yyPTzxNdoH7jGqz0YUEquY/1WzBc54HSKXz/0J2llwJLqGKd0uOjEGJQ4YqMXRPTLme3
         YlRrLVk6nj2YiDp0EMiSZ3DozqERMXaiU+vGPU5m6GjKmGzHHiMAPgC6hi3hRMKuy/gI
         7DU03Ml+ikqT8OmS6WIlxP2PwMLRh/nOV2qiH1jrf5/NTnWzkpm9H9unvAIVsZkfkgWc
         cR55pfofjbk/oLkRd/eK5QbCipP2bM847KQ3EnGT8cXGrcTIJM7f0WxdVGflA3m/RT4U
         efIw==
X-Gm-Message-State: AOAM5312V+VBsT9rroNHWwcJk9D5xkA+tDTY223CxCwu4Z9faVxeKMNY
        CbrBOg99ObsauyMqcSlOtGEB6WW4c/uhsGY0M/U=
X-Google-Smtp-Source: ABdhPJw63C+Bd874QydgDlRipD8jEk0y9Qcb0l+X95UjlDCdD78DGDsAwmRwDqeomD5Qy3HWOR4oTjJ8M1mtCCHMRio=
X-Received: by 2002:a50:8d5e:: with SMTP id t30mr23266794edt.332.1590584789816;
 Wed, 27 May 2020 06:06:29 -0700 (PDT)
MIME-Version: 1.0
References: <9e98156e-3ba9-e656-bb8f-c54229b5ac11@jguk.org>
In-Reply-To: <9e98156e-3ba9-e656-bb8f-c54229b5ac11@jguk.org>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Wed, 27 May 2020 15:06:18 +0200
Message-ID: <CAKgNAkhkASJ8+Xe64_ifM1_GgrNSCd6Vx0GDdkJ7aFfJ7RG=7A@mail.gmail.com>
Subject: Re: core sysctl
To:     Jonny Grant <jg@jguk.org>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jonny,

On Mon, 25 May 2020 at 17:08, Jonny Grant <jg@jguk.org> wrote:
>
> Suggestion for some additional information on this page:
>
> http://man7.org/linux/man-pages/man5/core.5.html
>
> Could "Core dumps and systemd" be extended to give an
> example of sysctl making a temporary change?
>
> eg set to the filename and signal that causes the core dump:
>
> # sysctl -w kernel.core_pattern="%e-%s.core"

I'm a little confused: what do you mean by "making a *temporary*
change" (i.e., where does "temporary" come into it)?

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
