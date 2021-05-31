Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3CFE0395A46
	for <lists+linux-man@lfdr.de>; Mon, 31 May 2021 14:17:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231331AbhEaMSp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 31 May 2021 08:18:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42652 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231327AbhEaMSo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 31 May 2021 08:18:44 -0400
Received: from mout-p-101.mailbox.org (mout-p-101.mailbox.org [IPv6:2001:67c:2050::465:101])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA293C061574
        for <linux-man@vger.kernel.org>; Mon, 31 May 2021 05:17:04 -0700 (PDT)
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4FtvRc0PdnzQjmb
        for <linux-man@vger.kernel.org>; Mon, 31 May 2021 14:17:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mailbox.org; h=
        content-transfer-encoding:content-type:content-type:mime-version
        :subject:subject:message-id:from:from:date:date:received; s=
        mail20150812; t=1622463416; bh=1cMOoBInh35mGkDYN4W9KCK/tfqO+2lb7
        esMm/sOIVk=; b=D1n+6Ftn3aqQcrCAAMol9sLgZsOGTf2VtBpwSajJMmC9ukcrW
        G9+1bt7JwjYJeu3FCpE+CD25KcJfZIx0pkYT1mUVja4Mp6qIEOpHx7YJ8CbcRV2q
        04aS/iOM/1PPaHeXP56ZAPJqC0/QKugHQrMzCvBQIjRtT7YsEm7vVI7DORQd3Rcy
        +cSzaRZvFvKUnqEoGsE1C4WVKiR5mGDXqrGfPcUvRnVlgXCJya9F0myjBypc6u2V
        06C0UdLvr/eKvjYhc8We1K1YvDWCTEE7ujJis4C/t6DjGEjuwP7NYYnQuJLw7e4u
        wVCHBd29938vWXg+u9woLyjLMP9CMnheZGYNw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
        t=1622463418;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=FKNySZvVIollm/KXfIFAoXht7LbOEM2/suSp+iRRfRo=;
        b=RPakmCjEUHexkHDsfyfmceGTmM527KnSUmWiae3xUCi1Mwzp5MZtRH/SClk3/dYjUKLe9k
        AC4p24Bbs5lbb5EI9nYGU5uV8/gY5sy++sAamlJo9hG+v2tfxsa1/GnGg/e55pRJrq5oaA
        WGFYtgYxJ1d/d0mk79wDzBIwHa41I5Q3BB1xFw6OC11UN7MP6EaB1ndPEHKqOMBxj1k/9/
        gs38do1igcbWDmAc1WbV/gGgxzP6DCYK+z8GeLSYN0HktkLvoxQWhBWgyLJyjYiWOrXUVl
        n195RQHnKAxIn8wmadnVd1foogakyAerG2ygcmv3dKIvJBG4XZuq17UeEnyKqw==
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
        by spamfilter06.heinlein-hosting.de (spamfilter06.heinlein-hosting.de [80.241.56.125]) (amavisd-new, port 10030)
        with ESMTP id jXgkiiiWd3LS for <linux-man@vger.kernel.org>;
        Mon, 31 May 2021 14:16:56 +0200 (CEST)
Date:   Mon, 31 May 2021 14:16:56 +0200 (CEST)
From:   =?UTF-8?Q?Fausto_N=C3=BA=C3=B1ez_Alberro?= 
        <fausto.nunez@mailbox.org>
To:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Message-ID: <303038690.122505.1622463416745@office.mailbox.org>
Subject: Potential undocumented functionality of brk when called with NULL
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Priority: 3
Importance: Normal
X-MBO-SPAM-Probability: 
X-Rspamd-Score: -3.80 / 15.00 / 15.00
X-Rspamd-Queue-Id: 15B761867
X-Rspamd-UID: be8555
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello,

Reading the man-pages entry for brk, I found that there's a specific bit of behavior that is explicitly documented for sbrk, however not for brk:

RETURN VALUE
       On success, brk() returns zero.  On error, -1 is returned, and errno is set to ENOMEM.

       On success, sbrk() returns the previous program break.  (If the break was increased, then this value is a pointer to the start of the newly allocated memory).  On error, (void *) -1 is returned, and errno is set to ENOMEM.

Here, it's stated that brk() returns zero on success and -1 on error. Some programs, though, use brk(NULL). This returns neither zero nor -1. Instead, it returns a pointer to the program break, suggesting that this functionality should be documented for brk as well.

I have made sure to read the man-pages repository as of its latest commit 65dfda3dd.

Thank you very much for your time,
Fausto
