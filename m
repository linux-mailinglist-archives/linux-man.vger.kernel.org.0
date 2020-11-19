Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6429E2B8DC6
	for <lists+linux-man@lfdr.de>; Thu, 19 Nov 2020 09:43:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726355AbgKSImT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 19 Nov 2020 03:42:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38486 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726354AbgKSImS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 19 Nov 2020 03:42:18 -0500
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com [IPv6:2607:f8b0:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BEDAEC0613CF
        for <linux-man@vger.kernel.org>; Thu, 19 Nov 2020 00:42:18 -0800 (PST)
Received: by mail-ot1-x32e.google.com with SMTP id y22so4547410oti.10
        for <linux-man@vger.kernel.org>; Thu, 19 Nov 2020 00:42:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:from:date:message-id:subject:to:cc;
        bh=HGD9LIttMKW3oqph8U+bRGQUgT1W8sgbYaiSLGdV2rQ=;
        b=QpA4z3aNKO6E/Qa5b8V0eBaSnbuVakXUAFxAWhS19lAfJChLe4ZQuRQc/JjjkbB8iu
         jML1CFC3xL9ONQcqVi6CJZ/zegkZOGFy4bM7kZvwKGYbEbKs6FW6EVoXGq31roBbSSnr
         nHPCtMAwDy3W1RHsSFAgSRpArKTCBfb5EtgzhjvAJJ3UzOlGuM+mWXrKun2JGek2tsm4
         ziqkQMRMNT1mobsilZhvL+IpRNJPYic24Iz/xSoA3ScfMrNJfRn3A6SGOa26WCKz9sS3
         uE+En43l49Mlv0/1x766zOLqP3gjN9EZRxp48Prl+kB6RkCrgmIBjr1ngtHk8WTQcige
         /FQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to:cc;
        bh=HGD9LIttMKW3oqph8U+bRGQUgT1W8sgbYaiSLGdV2rQ=;
        b=s4dqjocHR10yiWwxmnw+fbrXVlrCTxsk85jnkECwYhWdRCd1Bkf2/QSqAVUdiMeDww
         EDTTOfRZHK9rqRGjsbJKX+ohNjLMIQAibppxTRy9FW3AIgTybWtQNmR731fiw7QHx6nZ
         ESGBQx8KQrUquPuvfVJSdqAR7a1fgtrgH8rrGkwUK1QPjSLTjP9awpnOq04auQjZw/1L
         Jln3leXLyr4bNFf2YAI2RJZrS/WzMsLDm7EgrrfYwwJDZggtYVBSr/aaoJ1saOuqLo2t
         GOCLhKhXrQNGVssikuObTqeEe80dYF/9AQJY/aTlyGYrD2Zh5hej4yXP3T8Ur8/4ae9N
         iybQ==
X-Gm-Message-State: AOAM533mF3Xt+1Z/gsP2Y+IBzh/K6SgTwl8iWu5mCYHXtyg3Dd0KUHyM
        9zBZRQffmFBcPJvDxsPDyeLe74+OgrD4Zn2k6CA=
X-Google-Smtp-Source: ABdhPJwJjKnwyLPuo9crwMNaszWWbJY51eBPuK70EG/hFymaNApuS35JTcR9x3qcLdUqveh5rrxwAPdcnytPDeaR9YU=
X-Received: by 2002:a05:6830:1283:: with SMTP id z3mr9923771otp.323.1605775338077;
 Thu, 19 Nov 2020 00:42:18 -0800 (PST)
MIME-Version: 1.0
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Thu, 19 Nov 2020 09:42:07 +0100
Message-ID: <CAKgNAkj26iqAZoez08YVmA-u0fWAvDV9DcctM4hRHhAjwpvcvQ@mail.gmail.com>
Subject: What clocks are supported by pthread_clockjoin_np()
To:     Mike Crowe <mac@mcrowe.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Mike,

I was looking at adding manual page documentation for
pthread_clockjoin_np(), but it's not clear to me from the code what
clocks are supported by the API, and the glibc info docs seem to be
silent on this point. What clocks are supported?

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
