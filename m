Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BA5B91B0526
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 11:02:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725886AbgDTJCt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 05:02:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55382 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725773AbgDTJCt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 05:02:49 -0400
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com [IPv6:2a00:1450:4864:20::543])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC22DC061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 02:02:48 -0700 (PDT)
Received: by mail-ed1-x543.google.com with SMTP id t12so3431495edw.3
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 02:02:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=0LBsgOC77o5ltO/DN7eZU7KPebavZVLH44PM/Xc0zU0=;
        b=nN315t2UE+ffg0Ih5VrZCr7qywRVD5ef4Yzvn/kEWMqZgJ1QJLKpZR4PY6jQHIOT4J
         GZ8qv7Pr5L0qBKh5mf3x+sQQB0q/fNKa3es4tcWv6CYnmtaiWge1JTFJ0PrQSsn5F8IE
         +76GuNNxnXOZKFNsH2VLIDJTmMJZc1Ca3RvhSYPh+uqotmokiL3GpK6sybg6b5AKC/2e
         0a63a0mQXgx603DtCCR4/Sk4gC/hfVi56YpmDOgbHgVgMEUgC26SKrHxhP0liEs34P7Y
         tgB9e6reyy+kHrcSGoInW1Rz5Tp0Kbtsq7MZjnfIAkhG+lXgfavHk3je9vOK8gNWcT+8
         NkgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=0LBsgOC77o5ltO/DN7eZU7KPebavZVLH44PM/Xc0zU0=;
        b=Is6HWnklVX82z3Y7Ax943+u3EJ6bXxWhMjgHqm6NmXbmV5KqIL1iB6CXYC1CooqSbi
         sdL17PyepJiQXoWQ1MxKy/0UhRVevMaMPQia0643S+h7V+rsOPYkZDFjSP79YYv94IpU
         4H2a/KVp4X1M17mZKzelCWqD5W+mQdzCEesOmmCLC6N7oeyuiGeL9vUlQfPHtQv/+Qdq
         Kv3EV6VKKEkM5cIpqQXuTuf9JAx862mZyx87V1RSZPWpvJPDVNZ914WCS50wcS7lej6+
         SlXOiPdzL25mafVTmJAwLXfdcpZkKD7Prl1XJDIu2QsABAClPhSvzYsE5rSDKQidOHud
         0gdg==
X-Gm-Message-State: AGi0PubFHQ7i8E5QN2FPHMt4uuCzKOWh8/LqO251eDvQGGm4+s6S3dpk
        79yGwY+J1wYCJsAz4ViTLCXNuuTfkddVR3CTtJw=
X-Google-Smtp-Source: APiQypKYSn0Ypht4po6Wr8F2mO2GHHvHp+eKyL+Mab3EZnSTGoF4xzDaBjbyoV8M8CTBkrRN08vTa9dgM7o4gB7b8Yw=
X-Received: by 2002:a05:6402:7d6:: with SMTP id u22mr13110265edy.149.1587373367655;
 Mon, 20 Apr 2020 02:02:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200419064811.GA31233@Debian-50-lenny-64-minimal>
 <CAKgNAkh=65cH6S2xigJF6hjEMu+90=Co+GDV8OSzHU0C2XVYPQ@mail.gmail.com> <20200420085142.yprljwogzustfuxt@jwilk.net>
In-Reply-To: <20200420085142.yprljwogzustfuxt@jwilk.net>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 20 Apr 2020 11:02:35 +0200
Message-ID: <CAKgNAkietg1sq9uH6_eg=GHRzg_m72RBf_FOpt9qJewRJzPLsA@mail.gmail.com>
Subject: Re: Errors in man pages, here: msr(4): Content
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     Helge Kreutzmann <debian@helgefjell.de>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, 20 Apr 2020 at 10:51, Jakub Wilk <jwilk@jwilk.net> wrote:
>
> * Michael Kerrisk (man-pages) <mtk.manpages@gmail.com>, 2020-04-19, 22:48:
> >>/dev/cpu not on my system
> >Maybe this is a Debian thing? I have /dev/cpu on my Fedora system.
>
> FWIW, it does exist on my Debian system:
>
>    $ sudo modprobe msr
>    $ find /dev/cpu
>    /dev/cpu
>    /dev/cpu/1
>    /dev/cpu/1/msr
>    /dev/cpu/0
>    /dev/cpu/0/msr

Thanks, Jakub.

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
