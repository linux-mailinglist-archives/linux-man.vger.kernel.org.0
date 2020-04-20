Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1E7D91B1609
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 21:40:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726584AbgDTTkr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 15:40:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726161AbgDTTkq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 15:40:46 -0400
Received: from mail-ej1-x642.google.com (mail-ej1-x642.google.com [IPv6:2a00:1450:4864:20::642])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 48340C061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 12:40:46 -0700 (PDT)
Received: by mail-ej1-x642.google.com with SMTP id k8so567468ejv.3
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 12:40:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=7hM0XMUl3XBGKDXGNe5NKOLN5H9csqihuS/tI/ogz84=;
        b=sWj+RPUpwuSyhjguiJMMGmq3Y2xfIXxSt0W5ArjrCpitOqbzxTtRekITl+6Q20u9sV
         RTKQBieFJzKmQ3r35Mz0f3iWFIvazskVw8URB1R8Mfexr+ib/vCAmkGgXs4+rCVlDSgr
         LTmBXgugplABA2Z4PndkRriVjlLTMgKuHt614SVy/Yr/A/50uMBQmkY4FjUJviB/Yb9x
         oroU4a2AjovFO8rKg1GkQoojMhuUIMmFOfsjMn4ORMixycOiaHtILa4jKnBdJJ/0Vvm+
         HXBFqEAPYTn5i2gKrfF54rHr0+O1x6AZq/8qng4a7wy4FfjB2Ak7s6v4tlQHi8/ZO/MO
         bi0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=7hM0XMUl3XBGKDXGNe5NKOLN5H9csqihuS/tI/ogz84=;
        b=LbuZR+x0JKBJm4fqqa9TtG26IsD1Wmiyfn5d1GOsCSvj6ixbuBVNJfB2x9Szfzi+gy
         zkjnOhUW+W2Ym/Q+d3pv3jf/ux02GL8IuRvAK1bxjK8sBOPGIZYgj72blYXqHRUdbetm
         8nUY9otJQ+8WdNfnOEqZj6ryEUQJWcT7wTsOn40i52/odMylqMaguHYi2bK3StW2kQ8S
         4p70uSTNM3o2sTer51RYRGNSCGtlhitkDc6J3g3WpEQpujOWdTk8U4e8TRd8+1aT+L9O
         wl0VcGUAgC3sPTZKBek4Z+HO3LNngK20ZMAVcowXYPRtB492VMD9R0pxu4HMXisaMfju
         tA/Q==
X-Gm-Message-State: AGi0PuYPheUL18xOomH5AnEyMgGGJjtXQZ9TaTlQ2VSGBJlELGgq1nNQ
        y3fqn5xJ8xvwSU7tQuM9mVECQ27UzKy5544I5b0=
X-Google-Smtp-Source: APiQypII+fxcpADBKcNjkVRvbUDvnW+Vcq0S2DczFsw1xgz847MD7fi5/5+RweOwWCgKRZMsArWIjYSW95+7oXgbsnU=
X-Received: by 2002:a17:906:2488:: with SMTP id e8mr17790755ejb.157.1587411644873;
 Mon, 20 Apr 2020 12:40:44 -0700 (PDT)
MIME-Version: 1.0
References: <20200419064800.GA30584@Debian-50-lenny-64-minimal>
 <dd5698f3-e83c-7c2a-097e-0c83b184c2b1@gmail.com> <20200420193726.GD19913@Debian-50-lenny-64-minimal>
In-Reply-To: <20200420193726.GD19913@Debian-50-lenny-64-minimal>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 20 Apr 2020 21:40:31 +0200
Message-ID: <CAKgNAkhcAEAiP1LifvXW_zCBOJGxLkVZuEsOg2n4jXRKY2yoAQ@mail.gmail.com>
Subject: Re: Errors in man pages, here: fopen(3): Wording
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Helge,

On Mon, 20 Apr 2020 at 21:37, Helge Kreutzmann <debian@helgefjell.de> wrote:
>
> Hello Michael,
> On Sun, Apr 19, 2020 at 09:31:04PM +0200, Michael Kerrisk (man-pages) wrote:
> > On 4/19/20 8:48 AM, Helge Kreutzmann wrote:
> > > Text is broken: "as if by"??
> > >
> > > "The file descriptor associated with the stream is opened as if by a call to "
> > > "B<open>(2)  with the following flags:"
> >
> > This is okay English--no problem here, as far as I can see.
>
> I'm a good but not a native speaker. Could it be reworded as follows:
>
> "The file descriptor associated with the stream is opened as if a call to "
> "B<open>(2)  with the following flags would happen:"

the sense is correct, but this would be a more clumsy English formulation.

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
