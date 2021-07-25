Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 00AF73D508B
	for <lists+linux-man@lfdr.de>; Mon, 26 Jul 2021 01:03:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229956AbhGYWXE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jul 2021 18:23:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46526 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229808AbhGYWXD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Jul 2021 18:23:03 -0400
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com [IPv6:2607:f8b0:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A06B3C061757
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 16:03:32 -0700 (PDT)
Received: by mail-oi1-x234.google.com with SMTP id u10so8931395oiw.4
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 16:03:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=1KQX+TveeYaW53cmEtOS2O4s0pEva493oy2A+rtvoWo=;
        b=I79W9BR8iPYnbj9AOWMNChRDY9uTkn4cI2CSWnEnWtDNU5J7o8nYC3U7ueH5UUIHjs
         uA+aRF2PeiJF6lnca4jAC5jEzGpbCIR+7vwY/fjRZXU/T7WfbetJltgVVS3gx1qTyTwd
         y+MM1d7RKjsaycrAaxZAmFbP4IKpHCxyMjbvYHig2M1ORYzfTqG5nEVn026ZJWINETDh
         qnBSNJxX2PbmQMTDSOFctcjuO7kT6u/u7SJCacOUHgwo+Q3OdXE8nQFaQGXuUM5m7lpN
         64NzkYll66DXiemiFWFxjAkIoM0MNO1CM2kZLmSWaNikEl7Xo94CXnY/4gOLarvT9X0z
         gvcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=1KQX+TveeYaW53cmEtOS2O4s0pEva493oy2A+rtvoWo=;
        b=OYD42kxJF6KyneCOcaK4BzJoiscoNFEw27pkqeWJz4WJuEKzhwt4QQKeb08Fp79jdA
         QtCEAcIuOd9bqgaRTSDvBU6ChlAh5ntsrY27ZyFUq8DvzkWmLV8zn87+ritSUjtw/28c
         QzT7k0VRh/wLuwYQMxOY7WJIv0hpfADfpOW/CHMFengKNgSHvaBlfLIfDftkAtygk4Xn
         vVtlFhf7rbT6qTsYUXu69jezFm4tCI6ALLEqgAVqBtg2IBLlT4MB3RXssWjTXI7zzL4W
         x5cIQk6yz3y30pcd2w+7eE+3+rkxpz5qPyjMpHJBF7AVxdtPq1O3UM5lktlDeiRjrZCy
         3zSw==
X-Gm-Message-State: AOAM530I7xvSrv0GEMMLI+pPOpNNjJMLT4tbIY+VdkHruyAXluaMWPx/
        UVvWf6ukKPPtlFsWFMvzEYJvoNEydqjzhdDwUbg=
X-Google-Smtp-Source: ABdhPJwcwBh8AMccp5Y5DK89ODwHhm07v38A/l0FKZLtYTixmQQHuUWkuetMwp1D4ykgiM2X9lgmjNfnn2DiIDUUhmQ=
X-Received: by 2002:aca:ab16:: with SMTP id u22mr14978805oie.177.1627254212084;
 Sun, 25 Jul 2021 16:03:32 -0700 (PDT)
MIME-Version: 1.0
References: <20210725170855.GA16724@Debian-50-lenny-64-minimal>
In-Reply-To: <20210725170855.GA16724@Debian-50-lenny-64-minimal>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 26 Jul 2021 01:03:20 +0200
Message-ID: <CAKgNAkhkdcq8qf+2wL+HTGD5cAavWz-i3Ztm-rVODZvsdS7muQ@mail.gmail.com>
Subject: Re: Errors in man pages, here: rmdir.2
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Helge,

> Man page: rmdir.2
> Issue: Unmatched ( in 'See also'
>
> "Write access to the directory containing I<pathname> was not allowed, or one "
> "of the directories in the path prefix of I<pathname> did not allow search "
> "permission.  (See also B<path_resolution>(7)."

Fixed. s/)./).)/

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
