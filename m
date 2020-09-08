Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2FD34260D9C
	for <lists+linux-man@lfdr.de>; Tue,  8 Sep 2020 10:33:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729970AbgIHIdu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 8 Sep 2020 04:33:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41918 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729234AbgIHIds (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 8 Sep 2020 04:33:48 -0400
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com [IPv6:2607:f8b0:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CEDF4C061573
        for <linux-man@vger.kernel.org>; Tue,  8 Sep 2020 01:33:47 -0700 (PDT)
Received: by mail-ot1-x344.google.com with SMTP id h17so13398153otr.1
        for <linux-man@vger.kernel.org>; Tue, 08 Sep 2020 01:33:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=eM/8cA5XlHRASQUrklrNPWGyufIw5qHWnZWnqruDpNc=;
        b=lMB5PovsQ2egbEHBy85T33CoqASPile6CS/TZriScp31UwS0DXtYoJi7H+UoeU7yR+
         xefsBOn+VvQjFux4WvX+YlO47SLEUaTfdLjyYtdROb3XjXG0HuoquparibZni6zWbewJ
         TlNccoHBnUSU2BaM7liTdsOnKHNXFRsJxm0MEA5HUxWGDmIK6XCT6vzwkhJaFzBK787P
         4vjLBDB8gKpdOydCthjiTkgExlUk0m9TFwvaxPRrVvaif54od2rRjxtxTctlo0TsQZbp
         qRTGb90QrtQCd46lqMiVSzAVYYv/Sjkh8tEdxAxH2muIUSmvX9gF3ipmfL3GMbIp5kD3
         k3wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=eM/8cA5XlHRASQUrklrNPWGyufIw5qHWnZWnqruDpNc=;
        b=LhXCmdkopthqv1zG3k/p2wUo2nWKyqQCAYTnzL41h6T7oBCPWAjgdGeT7mLORlRRoM
         okGbpJqaK375jNdx0Qna8mVLs1/Z4FAsckk/ijwU4Wv3DT7zcuMcqa7wt9TPduqb4xHs
         Vonm2LqaN+vGUJZ3KwU2QMhmu1DDZ5r6KVV53Yh34JK6FbEgWl1PycOvEIsu+lDrHFIB
         KG4rJHomXWfZD3wrUr0HlTWhFTKkRVx2RFnnXSG/WAPPa7lYQ5K2wMKONm4fm9jYCpJO
         5HwPxjrtG+J1ITdMHR3DUf8J1ekQ++B1o1lAmoNIPk4KPkVcwP9w4MOFu42E4K2qf2vz
         HZhQ==
X-Gm-Message-State: AOAM530Mtoz+50npPgWJ/bY3WSf0tK6NN5awTGVpisNHdXDHKfz+7nOp
        GZHPrlOdluPKXabI2QVORPTf7cldF50Ll50y2QT9PY2g
X-Google-Smtp-Source: ABdhPJzKDz2Og/Zy1K54MMS83uoKwBsGnn3rb3epSTA6CdFdgQmAMt44KmWSUxz39Wznee9PMoM3zltiejHa/2hmPio=
X-Received: by 2002:a9d:7745:: with SMTP id t5mr16924374otl.114.1599554027243;
 Tue, 08 Sep 2020 01:33:47 -0700 (PDT)
MIME-Version: 1.0
References: <84fe18ab-7ba1-a8eb-0f36-6b0dafe6562d@gmail.com>
 <CAKgNAkj3DnVNUMA_=OM1Cw9i+3_LBhiqLfSYwYUq127=rPuDzA@mail.gmail.com> <9f30da85-af3a-870b-47b9-5f8f4b87dcc1@gmail.com>
In-Reply-To: <9f30da85-af3a-870b-47b9-5f8f4b87dcc1@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Tue, 8 Sep 2020 10:33:36 +0200
Message-ID: <CAKgNAkhxGf03V9o20WGYqfNh+73Rqeu=8N2VtO7ixx2EXpAgeQ@mail.gmail.com>
Subject: Re: BUFSIZ vs magic numbers and co.
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, 8 Sep 2020 at 10:16, Alejandro Colomar <colomar.6.4.3@gmail.com> wrote:
>
> On 2020-09-08 07:24, Michael Kerrisk (man-pages) wrote:
> >
> > Yes, I think that's a good point. There's nothing magical about
> > BUFSIZ; it relates just to stdio.
>
> Yes, I meant about stdio related examples such as fopencookie.3, but
> still it might be better to keep the magic numbers in those cases.

Yes.

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
