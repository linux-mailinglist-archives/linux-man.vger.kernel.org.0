Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 058962D9744
	for <lists+linux-man@lfdr.de>; Mon, 14 Dec 2020 12:19:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2436550AbgLNLSn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 14 Dec 2020 06:18:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43908 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2405720AbgLNLSf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 14 Dec 2020 06:18:35 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8505C0613CF
        for <linux-man@vger.kernel.org>; Mon, 14 Dec 2020 03:17:54 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id a3so14924870wmb.5
        for <linux-man@vger.kernel.org>; Mon, 14 Dec 2020 03:17:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=C0fsKbRtsEvL/LkMgKvWnPUnTx0OLhGC9HffxJL4mH0=;
        b=iGGby9qqMsnJOn2yYaoGpY+o0YJMBNXH9fz8cQhieTc8t1Y4lXr3JprG+UOWKGWPkL
         2E2uHIXO1jxfmKOlvRc83ew0Pci8RVyfu+H5/hAAvdPzXR0XilqeZKiNKEBaERfY5Bh9
         osGeaceLrgvciCmZQVNhDxH6eBY/hCWgNFPiNwwwhvSzXZkZoLY4MPCE0H4GQaxQlUWW
         0jZQUP+wArq3+3aQ4CBA87ATnjwTFt37qSVKdGsPN6lkDaz483eDiYvuEazGZdtJOM5j
         CqouLB8t71qHe4W/9OVfGmKF4xdif4GOky5aDsWCMuR60xyW2TjHBu/4i07BwKcCi/VD
         FEnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=C0fsKbRtsEvL/LkMgKvWnPUnTx0OLhGC9HffxJL4mH0=;
        b=oVBf/H/0QKnXCfkZ+eASHhBc9yIERdxdYW0IGm21HjN9ZHJ1jNrO2oUiPxTtkCAtD/
         w0mJBN8NHjdrpJ2hO1+epvMLw1EMY4NqoVg8NzjpGjoASBKt02nvOj9DHMmuTles26gA
         nFl/HwSBZvsj32agkGsvpFr7Uquc520VKvn7SxdktZobDD5E5CxKvtNbTd+S6m2zj5UD
         eP/Y9+N/g3rtw5b4AJ9F6TFgbKpptKcqtR+hB7rynpZot8bicsjQNpFQPVctd3kZj/41
         n8kmwdsHn06W1w+OfZ9TcTVlAVa3nEcpj01QL2QHm849XXw2pHTepiCvy/y/Ft/NVVyB
         g68Q==
X-Gm-Message-State: AOAM530WVXFjkZ3HctPvb9h3aWqR6AKWiYB4O/Ljey3x0bVUa0cKguu+
        eSkj7Gc7q1cKhgqiDWrd+To+bib6tII=
X-Google-Smtp-Source: ABdhPJwpUihHDA3hJTDSS49VX8xFvX73ByMtspigLqNufylrFP9qO2M6WWZoNIZVK9I12G20cX52HQ==
X-Received: by 2002:a1c:790f:: with SMTP id l15mr27572207wme.188.1607944673463;
        Mon, 14 Dec 2020 03:17:53 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id j9sm26249126wrm.14.2020.12.14.03.17.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Dec 2020 03:17:53 -0800 (PST)
To:     freebsd-doc@freebsd.org
Cc:     linux-man <linux-man@vger.kernel.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Subject: queue.3: Split the page into smaller pages
Message-ID: <9688904a-dd4d-9b6a-1df2-9af41471fa00@gmail.com>
Date:   Mon, 14 Dec 2020 12:17:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

I recently (Linux man-pages 5.9) divided queue(3) into a set of pages:
circleq(3), list(3), slist(3), stailq(3), tailq(3), and queue(7) (we
kept a link queue(3)->queue(7)).

As the Linux man-pages copied the page from you, I kept the BSD license,
so that you may copy the improvements back without problems if you want.

However, the new pages use a different syntax, so you may have to do
some changes.

And please, if you feel something needs to be improved from those pages,
write back ;-)

Cheers,

Alex

Changelog:
http://man7.org/linux/man-pages/changelog.html#release_5.09

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es
