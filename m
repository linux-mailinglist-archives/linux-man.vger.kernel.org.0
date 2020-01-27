Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B78FD14AAB1
	for <lists+linux-man@lfdr.de>; Mon, 27 Jan 2020 20:45:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725938AbgA0TpE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 27 Jan 2020 14:45:04 -0500
Received: from mail-vk1-f175.google.com ([209.85.221.175]:40725 "EHLO
        mail-vk1-f175.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725845AbgA0TpD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 27 Jan 2020 14:45:03 -0500
Received: by mail-vk1-f175.google.com with SMTP id c129so2924138vkh.7
        for <linux-man@vger.kernel.org>; Mon, 27 Jan 2020 11:45:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=Lt7a/9j0sxHTpX3n2ZYcVzjWiEOE3n6bBEwHcLcdBQQ=;
        b=aeRIiLDR5LH2ce8QmMY06EMq4/Tlf/3nN9z0BUdyvSqRMgtMIQxQZavI9PCU4JF260
         EHrvwSemD2V12wxesWKOpp44kxe94PIe/ljTPdAnwKyrQmefY1xpDjLm73qfkfVeRsot
         YStCFuZlw421NUHdWy0+5cNPeTWv9RAU292S5OJThIUwhZ3/yzb4K/tGPiZDMHMPjQiX
         GHibshx2Ak/cPu+P00cF+ywX7TvO4mbbjzz5QDGy3jlOMpz+uJY0sqjyqtR3rT76P7AV
         Pko0kE1ktPiorikYWGYOTj94DE2YYa+j/w961cJJjdjdUhkzm4WqfptgutiUI57vKd9O
         AOCA==
X-Gm-Message-State: APjAAAU78FFbjTitpDvAK0LCkmI4IuXPOikPyjvjGYUwA3I4RA+bHnfk
        KlvNIubFGyyHebx5yE7REFxQns4lgXWJPK4+xffzDtxOPIo=
X-Google-Smtp-Source: APXvYqy+JYQL65RWzpNACYE0J0MdDHBwlMgzO5yw5VusXLLgX4fR7y/qg9GABmtQLABqBf+Tb8iJgwimd1W8OGmIcy4=
X-Received: by 2002:a1f:738e:: with SMTP id o136mr9388056vkc.33.1580154302408;
 Mon, 27 Jan 2020 11:45:02 -0800 (PST)
MIME-Version: 1.0
From:   Jona Christopher Sahnwaldt <jc@sahnwaldt.de>
Date:   Mon, 27 Jan 2020 20:44:51 +0100
Message-ID: <CAEQewpoNS=ZmxuYHhQ-O8+5Qsgk5aYxW8eu4LKzJj9SDzaUXwg@mail.gmail.com>
Subject: Typo in epoll.7 man page
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

http://man7.org/linux/man-pages/man7/epoll.7.html

"waiting on the same the same"

should be

"waiting on the same"
