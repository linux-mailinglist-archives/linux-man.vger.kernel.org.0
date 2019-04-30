Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DF05EF32D
	for <lists+linux-man@lfdr.de>; Tue, 30 Apr 2019 11:38:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726436AbfD3Jis (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 30 Apr 2019 05:38:48 -0400
Received: from mail-ed1-f41.google.com ([209.85.208.41]:40754 "EHLO
        mail-ed1-f41.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726129AbfD3Jir (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 30 Apr 2019 05:38:47 -0400
Received: by mail-ed1-f41.google.com with SMTP id e56so5393045ede.7
        for <linux-man@vger.kernel.org>; Tue, 30 Apr 2019 02:38:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=Xkth7vjDsU+VxxFxWsrlCpc8PHycOUTenPUCc/1arHI=;
        b=S3AoktLT3ZS0RHATYGFZ6CEMEtniUMb+IM6MneATBiuynjqmSneTRjgBmWr40hyrXJ
         eAywUVdXjFKADiHeLMjcgO6rrnch4lMGEuGuLENiwo5vwJYOV4amMmpfRRD5XWPAmXLh
         I4/nQxYgZllGKDtSdwAEEEFNDWS8UZsMMK6YM8udpN9WI1fcTkPnE5lZIuuFq3PMZQOY
         4AVbpY58Ljis9BXyL40OtbG/HHej0NH190sowtaeSdkoZFsKmNASJWby4eahU9sp9e3O
         9lprG0uqhGzGW6r7T66SOTbYwFy6HXhngGLMFiAsbmr3MkzIdWqf5SmBkkF9HJRJrHRZ
         Ib/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=Xkth7vjDsU+VxxFxWsrlCpc8PHycOUTenPUCc/1arHI=;
        b=O5cyH0ts2rBQKJ2mhcMQTItINMptrnJ38qQLevFh9h2UK10ZO/c93ZwxgIczAX9uPG
         WCCus43NiZAIQh2E8WDEql42q1TrKd9by0mXVbNVvP0t2XtU+Jz2x7K2TyH/kc4yD7S1
         d+XRP4/sG15EUvbCCIEGFqt1xrlgy8RT9hJoX8c9kdno/ea1bf+d2EGBRp4dyPFLrHYD
         4GhZpOVcTkF+WD2/mlDHdVpQ71d5LAnFspEMGdh4KpL5TYjZuLfagwDxOvMpMbByaQkS
         3anSID7Lr/Vf7kVCsqegvO5cXIK46juUnefFwlePIUjWGjcvvhPM1JdbET4FprkGbI2R
         IyFQ==
X-Gm-Message-State: APjAAAVU5g+0orCT7gddnRTmUEf+S8XghZEAxOTS3ezRkXald/wPsaW9
        ngjmsrE1RlEbqJX1UWcpZZoW+j33i0aoMsxc75aiww==
X-Google-Smtp-Source: APXvYqyQzL4bTZLDQL01W/Rocyys8a8pA4nAyzxFSw2ppteO9HFAcTI+eM5frQrtucK33FIJheZpvrxMq8nbv8RjTpA=
X-Received: by 2002:a50:b835:: with SMTP id j50mr6733669ede.63.1556617125440;
 Tue, 30 Apr 2019 02:38:45 -0700 (PDT)
MIME-Version: 1.0
From:   Hugues Evrard <hevrard@google.com>
Date:   Tue, 30 Apr 2019 10:38:34 +0100
Message-ID: <CAFOVhR1Fqg9L718yEYVoECwAeNx+KKztfEKBvgLP7F7psFWcpg@mail.gmail.com>
Subject: Typo in mmap(2) : _SC_PAGE_SIZE -> _SC_PAGESIZE
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

mmap(2) currently reads:

    offset must be a multiple of the page size as returned by
sysconf(_SC_PAGE_SIZE).

Yet sysconf(3) only advertise a _SC_PAGESIZE variable, so I think
mmap(2) should be corrected to:

    offset must be a multiple of the page size as returned by
sysconf(_SC_PAGESIZE).

Thanks,
-- 
Hugues
