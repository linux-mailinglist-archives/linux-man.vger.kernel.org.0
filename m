Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ABBF11B87A0
	for <lists+linux-man@lfdr.de>; Sat, 25 Apr 2020 18:06:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726128AbgDYQGS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 25 Apr 2020 12:06:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55754 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726133AbgDYQGS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 25 Apr 2020 12:06:18 -0400
Received: from mail-ej1-x641.google.com (mail-ej1-x641.google.com [IPv6:2a00:1450:4864:20::641])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51003C09B04D
        for <linux-man@vger.kernel.org>; Sat, 25 Apr 2020 09:06:18 -0700 (PDT)
Received: by mail-ej1-x641.google.com with SMTP id e2so10032586eje.13
        for <linux-man@vger.kernel.org>; Sat, 25 Apr 2020 09:06:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=uqla6GAiFn3McdtIBXdQbKVg6khkfLFtD+6kt/tWUjc=;
        b=sd7beTyc/8z6mxaB5xe9AGxAJBsCwmGNrVr81UxXKZl4jLR12iDBf4ZxEYPZPZZ3iM
         yyhuNnZ3n37AgZZNA5zqv2jDFKlIAA72LzJH8NRzIM2P/ohBl9FN3k6W6FnpgaXKuJkg
         /MO+zTf7EBNyZufNp8YzGXQr8QGNjezzLXdUclNpz8nR+iL1yMWncv7eaObc720RqW/A
         Ox/lx+ajcWeEw+FCAjsE2vhpZTDA38VuuqLyTOl7lUT+flhSSXYRI0jOmokpNXq/q2Sb
         1KABPhHrZol+ByuLwZ8nOI0eRgzUCyybyKGZmdabvNMFSzYIrIKvu+XyRVFSZmmX7VO5
         bQww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=uqla6GAiFn3McdtIBXdQbKVg6khkfLFtD+6kt/tWUjc=;
        b=keNyz4123tbLyJCooM6uCExABAxc37PJtFqqMBl2VkfruNdWXFEGxGVG1C0udcYIKk
         Et8K3cdzC1eCqNsmdit4m1dkoOi+pIB+851ak0rpyzOYRH6/YiLBoQyyq71m/g6mdX8n
         28FYR/3AmABQcqs+ncTMS3xxPHQ7n6MuDWXeMgRC1lj7hcYRe3q9K8c34xGfQUsN333w
         hcLZG4XJW/CwqUEM0GRRMWmRWqYUTppS6tqgtq7mst22r5SCiaSO8o1OkXsKNlWWIiu6
         hhYjWKAeTjLSRVNb2OxWZAIswSRoyQdq9ZV+OtMxyMzKyuVTw8BcDaEn57ICCYRV934G
         /xLg==
X-Gm-Message-State: AGi0PuYLfQUI6mEodAMIKwRhqn0JlTvYyfvkZUPe+KUSssCaecE2WBiO
        CXGw7vB2KAR7AnHeUTuj1a08YlNF5lwOucEBqx0=
X-Google-Smtp-Source: APiQypKC0UQye06X4JgmmxesN/+KwEdpsqrrmFxqF8t0PhMfRACmfglBsio1lin12ENW/UXgb/KPzQjCvevgjcpTnTc=
X-Received: by 2002:a17:906:2488:: with SMTP id e8mr12280940ejb.157.1587830777016;
 Sat, 25 Apr 2020 09:06:17 -0700 (PDT)
MIME-Version: 1.0
References: <CAOOz39+f3vbR6uTCLBtysYj721hO5imCRHH2+3mpoiAKAxEqzQ@mail.gmail.com>
In-Reply-To: <CAOOz39+f3vbR6uTCLBtysYj721hO5imCRHH2+3mpoiAKAxEqzQ@mail.gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Sat, 25 Apr 2020 18:06:06 +0200
Message-ID: <CAKgNAkigprYTdrnhCFUDXGVNPbx41YprsESA9RAvdwGT50jwWg@mail.gmail.com>
Subject: Re: Typo in NFS "exports(5)" man page
To:     Nathael Pajani <nathael@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Nathael

On Sat, 25 Apr 2020 at 16:06, Nathael Pajani <nathael@gmail.com> wrote:
>
> Hi !
>
> There's a typo in the man page of exports(5) : two consecutive verbs in pnfs option description:
>
> "This  option  allows  enables the use of pNFS extension"
>
> I think "allows" should be removed.

This page is from another project: nfs-utils, I think. You could try
reporting the bug here:

linux-nfs@vger.kernel.org

and CC

Steve Dickson <steved@redhat.com>
J. Bruce Fields <bfields@redhat.com>

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
