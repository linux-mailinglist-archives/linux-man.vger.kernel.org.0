Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AFF624022E5
	for <lists+linux-man@lfdr.de>; Tue,  7 Sep 2021 07:05:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229456AbhIGEnz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Sep 2021 00:43:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51088 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229847AbhIGEnu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Sep 2021 00:43:50 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E801C061575
        for <linux-man@vger.kernel.org>; Mon,  6 Sep 2021 21:42:43 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id h9so17162481ejs.4
        for <linux-man@vger.kernel.org>; Mon, 06 Sep 2021 21:42:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cs.unc.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=gb+fbS5wPozrzIDFEl+XUNju0yFqVstaDh3PkPP4Jao=;
        b=ScLRLyNzo+9klC3lQff1sXmpe7BMEYJmTBjcBx3xdVDUHnsvPjQt9p40xqJf1FySYI
         mtNxq1aZ2eEaYCk5jSmvbPEe4D/nNac9slPy7WavEFyQZIqnSo/gplO0A2SFSu6+AZ82
         wEyY8W44S9EAnqodNz31O8etzNjKV+Nl4vYOQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=gb+fbS5wPozrzIDFEl+XUNju0yFqVstaDh3PkPP4Jao=;
        b=Ry6WG7irupzcjn4W3O/PZHqKAeSXm1/lLjPackOu4hEzMZTFqTwF2s1XWVu49oacLW
         Q84pD5+jRBlFRD81DthKUWy6tiK5Qn9sZS+ci1xzAVHkDnIJCPXDKnYrZFATFUrpTwnE
         ycssPv25/aZ0yLyhI937s99LUvXw+CIwycXsirfG7d8S85m1pS3OQIhuDdWZr9m3OG06
         1ESGwyR2qBwa8s6uQSFhEMtyx4XNrjXd8bh/m3H2VajkUT1fDT+XqNT02jBSXzJLHG2d
         ek7H5NuxlSbvMgaZmsAMbwooG2oDzPDrc7k2PQ0eQ6gBSnW0Cj9/+r9sJ+F5ZDmFbMgL
         WqiA==
X-Gm-Message-State: AOAM531CkFCnveJIUAdRs7H3OyBqghV1FqflkNoxOPH9ljeN/sdhSRat
        vecOxlUK9ApjytBzwzWR9AP3YsiNXka3ew8vtpalvVVoHhpHCQ==
X-Google-Smtp-Source: ABdhPJzjVr0gbnEJ7RBjgGRqHVFmYXOVHfJT5hMVo1aAb6vyqIjEhVIEL9y9Q13jSy67NzeLrB9FBABA6KJaqfx3qqg=
X-Received: by 2002:a17:906:3fc8:: with SMTP id k8mr16505205ejj.217.1630989761983;
 Mon, 06 Sep 2021 21:42:41 -0700 (PDT)
MIME-Version: 1.0
References: <CAMGmevBaX-PAuNfN6fANjipxnMO9JmnKdjTxaRVWMM78zC3mCQ@mail.gmail.com>
 <CAKgNAkjDsKw1PgHhVZSVvtWuBQDyCrqhLq8HDWh9brLm4f0_Kw@mail.gmail.com>
 <CAMGmevCS7SGkDDGJkHm7JzquZsUHzivG=Wuj7xJ4h-yYikfpFw@mail.gmail.com> <CAKgNAkgTXXtthyxue6eRb4JwSzqWH5+xUi+Euutxn_M-KFrx4Q@mail.gmail.com>
In-Reply-To: <CAKgNAkgTXXtthyxue6eRb4JwSzqWH5+xUi+Euutxn_M-KFrx4Q@mail.gmail.com>
From:   Sagar Patel <sagarmp@cs.unc.edu>
Date:   Tue, 7 Sep 2021 00:42:31 -0400
Message-ID: <CAMGmevAVesWWzs5c=GtqRZGDJ0u6g1NbOfzf5FK3DVotwOsB4w@mail.gmail.com>
Subject: Re: Meaning of "Signed-off-by"
To:     mtk.manpages@gmail.com
Cc:     linux-man <linux-man@vger.kernel.org>,
        "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

> > Would it be a good idea to add this information somewhere on the
> > website, or in the CONTRIBUTING file? I wasn't sure whether it was
> > implied that the kernel's DCO applied to this project as well.
>
> Good idea! I've added some text at
> https://www.kernel.org/doc/man-pages/patches.html. Seem okay?

I like it! Minor spelling error: please change "neas" to "near". Other
than that, it looks good. Thanks!

=E2=80=94Sagar Patel
