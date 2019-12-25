Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4ADF312A6A3
	for <lists+linux-man@lfdr.de>; Wed, 25 Dec 2019 08:51:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725992AbfLYHv4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 25 Dec 2019 02:51:56 -0500
Received: from mail-io1-f54.google.com ([209.85.166.54]:42858 "EHLO
        mail-io1-f54.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725935AbfLYHv4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 25 Dec 2019 02:51:56 -0500
Received: by mail-io1-f54.google.com with SMTP id n11so14156501iom.9
        for <linux-man@vger.kernel.org>; Tue, 24 Dec 2019 23:51:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=4KQK7lGu6gSmH+xAClHGRk+I+9U/1rt2kRsS9wdc80M=;
        b=SotHAvc3rRruBCx6eNwLRW7SqM5u209uKOnBzHs0ZdjNo5AoDBGfwJf2KdixerVz5l
         FuHdBdlN4y+9tO+Gm0ijQgXI1Uhvris65NyLoMHven0/6j/R0sXCyANIxaStrdIGE1OH
         IT324w2tMg9w1tuzOUtztBu7YBG8NIuIWBB7sBBqYVpjqVxvpPyS2Q0UriMNPe8JmxYe
         j0rAZuZQYa89QSTGAvXkc/XHN+Ed6G7sOL1iZ2I5hMQf8+7C6DDoBR0xQoSuzzJ49KMJ
         dbcJOoGegVr5xXn8pBe00hB5brheJoHpGoYIrpfvkau0K4ArJGPFEYTf8EQkg6TnXDJr
         dOMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=4KQK7lGu6gSmH+xAClHGRk+I+9U/1rt2kRsS9wdc80M=;
        b=gm02OjiUiiM5OsjyE/02zl4Hmxvdwv8x+jClEjvQoRJc4APS+hX7who/3nynVK7/6c
         US4841b5sbkBqSRgShpkQAwYjdym7SbOOzFRkRW3HIXk8WMIDxpbSIe+wLc8gaWCM+Kl
         i81j43bzZC4m7sNZfQ5hK4KIgcBXGeovdzEqqFQwDN6ohXs/zFVRYg1f2gbXsvVEgqss
         Wn3OnYQcwFP2FSZJr/HgeHxttj3DodyxA53tg366usCZn/k/ramhunpG5gCMPPlFlV8H
         SRzac7b8ZLWA1DRar9cc94G9m496ryfLIN0+0s1BgMcOEdWnneSddC6D7TYaLInu7gmn
         +1Hg==
X-Gm-Message-State: APjAAAVBiszjmJgBGndcIRt0QP736FfmpD+INEFJyOVRLfcB0JWUFSkV
        J1p0/0ZKrTFRybWYKw96vtnqq2+WqQ6xwgWURpY=
X-Google-Smtp-Source: APXvYqw8ABqG3zIaHK9Z1k1pqFb4I2X+K451CXHLo7M3t8fTMg2LETAt5oVnHgHHMB128mURhdpMXtPMYEmbgAthgpc=
X-Received: by 2002:a02:662a:: with SMTP id k42mr31891779jac.73.1577260315610;
 Tue, 24 Dec 2019 23:51:55 -0800 (PST)
MIME-Version: 1.0
From:   Sergey Oskotskiy <sergey.oskotskiy@gmail.com>
Date:   Wed, 25 Dec 2019 10:51:45 +0300
Message-ID: <CALzkOGiTYq8t1q_MXYpH4apF6nvhQsL3MNwbsULbKxY3rQe1cQ@mail.gmail.com>
Subject: typo in ioperm man page
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Michael,

I think the ioperm man page
(http://man7.org/linux/man-pages/man2/ioperm.2.html) has a typo:
it says "ioperm() sets the port access permission bits for the calling
thread for num ___bits___ ...".
I think it should be "...for num ___bytes___..."

With best Christmas wishes,
Sergey
