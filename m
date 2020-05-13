Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0BAF61D0D3E
	for <lists+linux-man@lfdr.de>; Wed, 13 May 2020 11:51:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387654AbgEMJv1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 13 May 2020 05:51:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49488 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387653AbgEMJv0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 13 May 2020 05:51:26 -0400
Received: from mail-ej1-x642.google.com (mail-ej1-x642.google.com [IPv6:2a00:1450:4864:20::642])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67FDEC061A0C
        for <linux-man@vger.kernel.org>; Wed, 13 May 2020 02:51:26 -0700 (PDT)
Received: by mail-ej1-x642.google.com with SMTP id n17so13658807ejh.7
        for <linux-man@vger.kernel.org>; Wed, 13 May 2020 02:51:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=iIdW8j0JR+MH2Ml4my0KmOnThXTMmVo7+ju19G5ewM4=;
        b=XHPhdjFtinuHc9bvvvs27MbkE8aLF9nrwF65n9LRwkODaiVsYzD1w9uiCm3IcCz2BL
         F5ZUP4M2/GtG+OAGoPe1hHRdbJKQKbWgSj9T7l57xRBpWRBU/2dhGdy8peeXdeIgOTNy
         /C8THBPkiZvTKdBdgzM20vPxN4lNLIlgQV4gzVCn3oFMQMlLdAdKxTeP0DdferfEsOlg
         5VWP1QyH5kEHLXokBiKpgB6IbwMZWsTkz5OdgPsLqw/1WNRIY1AiZGU3cg7Ql8Q3k0Gr
         1DR3uojOhrqwQGH68HQjCKe27P3Tkcf8LCIlSdeurlho9nPOxI4fh24bw5jOOy6+dN+W
         HdeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=iIdW8j0JR+MH2Ml4my0KmOnThXTMmVo7+ju19G5ewM4=;
        b=NZ9mxl28skPljIv8lTgQA+o2bvPoMHoyLhDGQGCiQD08ByNzn3h6ZlaLPmXvGWxdb8
         lQjEaZdWlaPBbST8hK7qP9ZujNPqYwLP2CVCYbNChITebIiknSt+7F86JGRYrGFpY8T9
         9I+DylrS3+Gsi9EFNV+gK3/tRsEUv1VDEVRv4MdXElgvE8rfDA+8szSaq+I0RQD7Z+sm
         CO4PP8DxEiGZ1dgLSVzMWou7aqR3H5ucL8ScC74pVu2dIpZ6cvIpxt3bB7AikJLx1dlN
         A589mYqG9FKoODtr/of0DviTm5XyQi/TdUHNS2l7PrBkyeQypTQT16Qv73gPwV+crO6U
         fZzQ==
X-Gm-Message-State: AGi0PuYVyHxmgKkoWSkl0eCFiXZSnjgcjwiOMUIoO2IhGl2o5dy5BF8m
        q4IY3yTZQiOdqUIycE4Nn51WDByYQOa0WYWC5QfuBA==
X-Google-Smtp-Source: APiQypIHLuG/iVrjG+MQMfPejoKWb5ED+dqxXsBZoDdTLgHhcy+0IRo8y1UYN6czVvgfL99ecM723B5Y4jG7Uos6L08=
X-Received: by 2002:a17:906:add7:: with SMTP id lb23mr22356173ejb.6.1589363485099;
 Wed, 13 May 2020 02:51:25 -0700 (PDT)
MIME-Version: 1.0
References: <fb7372eb-98bd-b659-bd1d-a0ecb623a4b8@deloquencia.de>
In-Reply-To: <fb7372eb-98bd-b659-bd1d-a0ecb623a4b8@deloquencia.de>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Wed, 13 May 2020 11:51:14 +0200
Message-ID: <CAKgNAkjEyWJd4s_LZPaWFyAVS_DAQ_q=8qZcXrf=7JN=QgE=ww@mail.gmail.com>
Subject: Re: Checking on Bug 206693 - hier is outdated
To:     Thomas Piekarski <t.piekarski@deloquencia.de>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Thomas,

On Wed, 13 May 2020 at 11:33, Thomas Piekarski
<t.piekarski@deloquencia.de> wrote:

> I happen to stumble upon "Bug 206693 - hier is outdated" [1] while
> looking for (more) intriguing Open Source and Linux issues to look into.
>
> Checking lore.kernel.org [2] and GIT Repository [3] it looks there
> haven't been provided any patches. Did anyone start to solve this issue?

Not yet.

> When not I'd like to take a look, compare FHS 2.3 with 3.0 [4] and
> provide a patch.

That would be great!

> I'll follow the page "patches for man-pages" [5] before submitting a
> patch. Is there anything else to be considered?

I think not.

Cheers,

Michael
