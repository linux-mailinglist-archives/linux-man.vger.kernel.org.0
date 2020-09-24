Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1B110276E21
	for <lists+linux-man@lfdr.de>; Thu, 24 Sep 2020 12:05:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726681AbgIXKFJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 24 Sep 2020 06:05:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45162 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726645AbgIXKFJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 24 Sep 2020 06:05:09 -0400
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com [IPv6:2607:f8b0:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE1F3C0613CE;
        Thu, 24 Sep 2020 03:05:08 -0700 (PDT)
Received: by mail-ot1-x344.google.com with SMTP id u25so2611092otq.6;
        Thu, 24 Sep 2020 03:05:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=KhTruP3MwdUdeacDNCordGViFr1P2f07pp/20Q2tnDU=;
        b=T5kPZAQOvCK0EKyT3Pj/v7gj8dj+GYo3XEu02eX2zLhpboD5OLYZ4f1qcFDX6qgw8a
         inX2z6UFOfQUqr5QIwBelVm2+995dQY3DlD6E9m+0rOTOB6jTBRLTAaWZKNhkPmSrVUR
         OSa3DzrAGPjzJpIStcEkGYc6xkaTGyGl8TuYc0jN1HIt8FWT8ZQ034EYhlYVem4px9bL
         KYCwo1fJRuXNMrHRIR22ckV065GVmoo3dyyaALlIOfLe4GmD75Gh90qj25xT9kJ/L37O
         v80rYgesA6dR8crN9eiXqxZCymI9G4TogQ9JVJIItEoSVPgzUjdRz4Gg6A7kUh/iF3B7
         BC3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=KhTruP3MwdUdeacDNCordGViFr1P2f07pp/20Q2tnDU=;
        b=dGkgdJNx/0NhlXc8FuzchCYoCIdQe0BG3h7FghJOWlxCz5LBfcgQxy8fdwZ4GHsir4
         fbryIXK1NnTaQXYxoOLQBa3/HWEsqnaX0iWQYylPq392cZC0YKTM4YlyZQCimhM203Fy
         4g9K2U/oYSUXP+3c0lTuMO2ARC+PQG3nZl27oRQ37zb+FS0wFTc9CNKwF3wHv+gbTLhx
         sa68V+dj5dFBERRgdHL9ajn9e9L0KXPajuaJITkQim4GP7frai23VxK7HPVdCEjACII9
         owg4Ookev4cWps4tVyksqJSediA1JLFU6nLrnZJrX3ILBrL6TZUm+fZabVHnUnpEIDaf
         nK5w==
X-Gm-Message-State: AOAM5314jAskBzG0QF1lO5vC5m31GzdhrgVKN931tRROGJFnt6mfOCHV
        uBjnaoGVfUo/FlBcDOdsTNF+VysT4ulGjJh5zks=
X-Google-Smtp-Source: ABdhPJyr9flGN0LnA92jzCTo9x+EQSPEpSv9RrucIo/qNN5zU/t2nSD/xKNH8GkvwvKVtOYTi6/j5yCllCAbShQEC8I=
X-Received: by 2002:a9d:2274:: with SMTP id o107mr2681695ota.323.1600941908259;
 Thu, 24 Sep 2020 03:05:08 -0700 (PDT)
MIME-Version: 1.0
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-13-colomar.6.4.3@gmail.com> <CACKs7VD_p=d+nvuFxkWofSE6jCoKAKx5w44_5ciTJ0NX_H1ZFA@mail.gmail.com>
 <7dd2ab72-3ce7-1f50-229a-e663c3df2dcd@gmail.com> <CACKs7VDzgUyDM9FhRR69Aqw2-0xiZC86EhkqSmD5P68derRBFw@mail.gmail.com>
 <de87f720-68fd-02ef-1ce4-aba7593dd84a@gmail.com> <caf93f04-4d73-0377-8787-ad38d217795d@gmail.com>
In-Reply-To: <caf93f04-4d73-0377-8787-ad38d217795d@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Thu, 24 Sep 2020 12:04:57 +0200
Message-ID: <CAKgNAkiHKmqO+v7ZLhD0T-86e-jPgGabWDc3V-fucS0n-vdQ4g@mail.gmail.com>
Subject: Re: [PATCH 12/24] getgrent_r.3: Use sizeof() to get buffer size
 (instead of hardcoding macro name)
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     Stefan Puiu <stefan.puiu@gmail.com>,
        lnx-man <linux-man@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>, Walter Harms <wharms@bfs.de>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

[..]

> I was reverting the 3 patches I introduced (they changed from solution 1
> to solution 2), and also was grepping for already existing solution 2 in
> the pages (it seems that solution 2 was a bit more extended than
> solution 1).

Just so I can refresh my cache, which commits were those?

Thanks,

Michael
