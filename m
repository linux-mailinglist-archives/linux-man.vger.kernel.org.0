Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 79EFE2B0FBC
	for <lists+linux-man@lfdr.de>; Thu, 12 Nov 2020 22:04:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727134AbgKLVEM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 12 Nov 2020 16:04:12 -0500
Received: from mout.gmx.net ([212.227.17.22]:48669 "EHLO mout.gmx.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726759AbgKLVEL (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 12 Nov 2020 16:04:11 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1605215050;
        bh=8KoawiArhjVGvqBjgwaMhsOSEYd1mRFMOtLnoQB/iYY=;
        h=X-UI-Sender-Class:Date:In-Reply-To:References:Subject:To:CC:From;
        b=LHhesz/pOApNsjoVRYYEx9oV3jvBbBghZZFXiOKM4vm/8cWfOXS04EWfI+rn+X27x
         JKQczejW+t1dCj7/7Q7QQ5zoPcC778djo7/plB7yAA+blmdDyF1Y2NLZwfQIvkISZr
         yRU3p9Xlon3nUxUDQLsF6Skt2cBZoZWQvs3tKbfk=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from android-2b37cbcc6a0ad27c.fritz.box ([178.202.41.135]) by
 mail.gmx.com (mrgmx105 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1McpNy-1k4WyZ3gf4-00ZvRG; Thu, 12 Nov 2020 22:04:10 +0100
Date:   Thu, 12 Nov 2020 22:04:08 +0100
User-Agent: K-9 Mail for Android
In-Reply-To: <b3fd673a-200c-78fd-97fc-862f41e54d21@gmail.com>
References: <e18cbe1f-5dcf-c717-5790-912af6bbfa41@gmx.de> <24b18d8a-84cf-17c6-12cf-f2d0c979b6ad@gmail.com> <70217a4d-9525-a186-4560-02216dd4546a@gmx.de> <90f0f681-0770-9975-f370-415300d29fa9@gmail.com> <16CBDA59-F868-47E5-B88F-C9CF235BF8BD@gmx.de> <b3fd673a-200c-78fd-97fc-862f41e54d21@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: sigaction.2: clarification for SA_NODEFER needed
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
CC:     mtk.manpages@gmail.com
From:   Heinrich Schuchardt <xypron.glpk@gmx.de>
Message-ID: <C98DCC3D-49A0-4B02-943A-AA6F2622F66A@gmx.de>
X-Provags-ID: V03:K1:TMO3Un/Dvrdp0v7lL5f2hLB9CqGSFA+38FsPDMzHwD7B4DtC/xN
 p0YKV7ldY/D744A3A8dXQaYCMBu/hzkfjHFhqcxsfSS+/bV/dlE4qqdQUijmWMlvt9CQqb2
 kWaKsYYrq34FPnkHClS4+dpo/WD9KCBtOfdRmozYcm4MUMm6KvDZ6cN/XMi6FOfJhzR2KAJ
 iZnGzG9mF7GD0GT7aSCHA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:XrCuuOWD/qo=:FrVUcJyNZf5dWvzHqfvzqP
 3UPP+T7WSXd3PqbhE1nvPN/ebhVq2/EwmuvMV+Os/19YuWS9j00UqYMDuisxJyCgNjph6pj3W
 Vo2aovU9pCCQtjqEpsc/e5xM9C5lphqHS/bC7X1ypeWl8P69Z/UcsNLcHKQdeUTe7ds271Iqt
 1Dw6zQvwUpRWOUT90GwOZHW3cENH7FvC3PcKQ0S0AlpWBgF1YwC/7uoYzZ91yDcBYDzFteax2
 9/hA4AqA/twTXOWZirH/5tsmRP8ZlcR34yWf3CERIfNnmYZgkCFMCojyv1Qe/Wp8J6XxPydpE
 Wn43qYmbQiEdtSJDKrpwWJQmHKMZo2BFzg8XA+npZomQka5NhOxNTSEJkSyPnfUU18ZUJgguQ
 aJY1U34m/SPU+JSKDhY/tCuclS9D/gJNAuH5YYWHorJY2kAr6QXaUMOijg4tP8PmV7MCftQHc
 ZVhq3oRGtGmHNnmVwP5YgEKTNXLvt1LNcuZDSMr3W3B7E9sVqnZKuYSGhZ4aBiy13ZU9tfwHj
 m3DvzofJGjBVDbQsJyo5FPwrdqhROryJcyLKQrViMpti2/O9FGSaH09sTol7Ka/f51QkdiR2s
 XDmRNYVsuxuCtHFcDz4A1hjabbcN85qBIhBknkQFhqtZDv+GKwph8QJI8e7XXGHAEFYt8Hegt
 lhr5JJwzRuz3jXNWYwk9LaLi4LgwgeP/ABNkGWm9T2Ev80TYPxaK32I/4T4+pDPjW+4gFivXc
 uBcVQQamv6AMeoa+SPv7AyfOvJWkP9AGItys9iC2LfBqwemWM5EjEO3cNzJpKW+aqCl2y8qYe
 qNdn+9ZkZKTP835uy6hvJaQwDKmqWdwURA8vJPqV7znfIbCuQe2KMuCum0sP+Zrb2YejdBtP+
 ljdAqpOJP6iPX5mBtKwg==
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Am 12=2E November 2020 22:01:58 MEZ schrieb "Michael Kerrisk (man-pages)" <=
mtk=2Emanpages@gmail=2Ecom>:
>> Is there a function to change the signal mask without leaving the
>handler?
>
>sigprocmask(2)=2E

You might want to add a link to the function in the note section=2E

>
>Thanks,
>
>Michael

