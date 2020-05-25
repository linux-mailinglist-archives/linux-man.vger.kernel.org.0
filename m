Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 248671E1148
	for <lists+linux-man@lfdr.de>; Mon, 25 May 2020 17:08:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2391041AbgEYPIm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 25 May 2020 11:08:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52570 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2391007AbgEYPIm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 25 May 2020 11:08:42 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AEF1FC061A0E
        for <linux-man@vger.kernel.org>; Mon, 25 May 2020 08:08:41 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id u12so298962wmd.3
        for <linux-man@vger.kernel.org>; Mon, 25 May 2020 08:08:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google;
        h=to:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=u18bxgkZcyxLeaqNI2VR5CPe5XJNWkhnywBxi+QPLdk=;
        b=QyqyILBSdZHOccdSzzK9+Iehp15nodjurD1YClhj9p+c4QzTmLioCbJMZoZaN0H+nk
         8Zx/URsOSXhAkp4CRLlfZlUkT+ILVyvbc6AE1nWC4W2TwKvHURTNeCbaayphbCc3l0sC
         AyssGHLjqDW91a6OnDrgXo09Eg8I11OIqkbZVNbj0GP9KyAiQtxO/4NbTc8SGqZvYdY7
         yFgM5pOcJemBaenj0G0AN0F354HC9SBcUU/PXt7vhGQCWV/1XT+BLjULELKS22XUxFpk
         1h9xsOsB8kdshvEQoLb99EaVxRU7+uyBpgwwEknTc1+X3N9ydZMaiDr3D+5wIHpINvhA
         QS0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=u18bxgkZcyxLeaqNI2VR5CPe5XJNWkhnywBxi+QPLdk=;
        b=n3BOPC6VagWuHCjl/Yp0n8LonkKEJb3PPEnSv+8kGhjB5jgTkLaVTyDlL19dGX1k6f
         Enz9rF2df8crKaxfetJg9kvVWh4uuSzAQDvib4/qgoqBr7JfVN+dPuOcTMz28/+DNmSo
         Z/46qddvFNV35hiuU80xE6gp5DgkuBPIzc1e+Isks/qomFbv2V5NeQYFuBoc6U3IG/mC
         EZSsS7rB2FN2Qbj5KSBJYxIpk9xeM6zaf25ikAw2y+vLtBaweoyCsJGdZOJsXKRYzu/h
         8JLPjkK7j6r/SmfEedNxWLu8JB2J+Pe6ldt6fD9zlh4M1yWmtJ6AUh1VRXoJPiDk0Ovj
         sweA==
X-Gm-Message-State: AOAM533bREyeZ7Z5AYv0oWqbRJslpB7/nMu3XGx45dwUauPBTlgy+Ong
        VbKMpNFdNVljJTWI4JeETA3OfIuP+aw=
X-Google-Smtp-Source: ABdhPJzPGnT0W4YSgvPjQNt75MK4EUWq1L/tpkmuAso2LyauhjR0BN83vRTwQUFZsWE8NpxtiaG2fg==
X-Received: by 2002:a1c:67c3:: with SMTP id b186mr13940742wmc.167.1590419320165;
        Mon, 25 May 2020 08:08:40 -0700 (PDT)
Received: from [192.168.0.12] (cpc87281-slou4-2-0-cust47.17-4.cable.virginm.net. [92.236.12.48])
        by smtp.gmail.com with ESMTPSA id 94sm19237231wrf.74.2020.05.25.08.08.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 May 2020 08:08:39 -0700 (PDT)
To:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
From:   Jonny Grant <jg@jguk.org>
Subject: core sysctl
Message-ID: <9e98156e-3ba9-e656-bb8f-c54229b5ac11@jguk.org>
Date:   Mon, 25 May 2020 16:08:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Suggestion for some additional information on this page:

http://man7.org/linux/man-pages/man5/core.5.html

Could "Core dumps and systemd" be extended to give an example of sysctl making a temporary change?

eg set to the filename and signal that causes the core dump:

# sysctl -w kernel.core_pattern="%e-%s.core"


Cheers, Jonny
