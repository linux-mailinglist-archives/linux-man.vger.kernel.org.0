Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 44E8ACEFDC
	for <lists+linux-man@lfdr.de>; Tue,  8 Oct 2019 02:19:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729575AbfJHATf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 7 Oct 2019 20:19:35 -0400
Received: from mail-pg1-f179.google.com ([209.85.215.179]:39911 "EHLO
        mail-pg1-f179.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729285AbfJHATf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 7 Oct 2019 20:19:35 -0400
Received: by mail-pg1-f179.google.com with SMTP id e1so9211976pgj.6
        for <linux-man@vger.kernel.org>; Mon, 07 Oct 2019 17:19:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=networkplumber-org.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:mime-version
         :content-transfer-encoding;
        bh=JMkIKUT4WbSF5s7SBru0znxxJn7AtkbsbJ0099/wMuU=;
        b=WkZh7UjdPvKcBz16ZGbFzRpdmFGg/AOtPvX6XoOg+5VGW//ibau95E822GfxgEKb55
         VxrLQADRTucprv2frxMOCoXklAcHBYqqtZ4pEGDu7oBwyKc2CVWF3r7OdaC6woIdr2qZ
         NeZ/Kihql314S/GqffQqWnWdWkGCFyx5U/HLB6mp6swO+wdq9XvW2XOsO+2KAhyFjuv0
         fnxxnusjeXBCYaTY4aq3D+6kwl4jf3OL++LWayP8rDMrC4slZewoOMMUeRVetQ+fIvK2
         3nQqFS0vWWCPVYDMXcFhi2jthHsQRwsKmRuSqu/XXH0irz7JBO7yMirIb8zWktM4Qw7P
         VQMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-transfer-encoding;
        bh=JMkIKUT4WbSF5s7SBru0znxxJn7AtkbsbJ0099/wMuU=;
        b=ZgRzgENQjMIUYlw3NmelqKM7e9Tk0y9jl6uXz4d0Zy6s4TKMBlX+HdvuASeheuPL3h
         2DwBk1GPHRkGwjGBN57p5scixnNxkF2wkWlRy0u+H+kEPijCte5qOk93vgpdYLh3lIIZ
         cGC8JemAiqiJVUTEzhM7J9mzrZr/Puv/qKCuIiEoK/W0U9DPSD2obSiR+ZYsFQ0Ng14/
         JNV22cn12HwMy8p1nX8//yejHn6vJVf/x4df+6aSS5JUd4ZObN9bcqaygQNYLWo+CELS
         m0/c02edaX0Dk97Rkr5ngDZe1P8whpq5mO1z+A17GkOuQjvJCJL5rUcZwBIV59EBi7gH
         Hbow==
X-Gm-Message-State: APjAAAUXBaxApiU5WV2dUMs5X4UT2j2rpNkTu4CnPmGP3ND0xEPzfpAp
        YMFDPVuL3zt5k1Qe4UDexE8ixj4InqEAhw==
X-Google-Smtp-Source: APXvYqwqxfluIiiHdz5Lp+xISUR0agYui49n0sEs2mQ/osls3G/gQwjYQ+qbfiyl3gBQq+zwZzKFxg==
X-Received: by 2002:a17:90a:380a:: with SMTP id w10mr2328208pjb.104.1570493974318;
        Mon, 07 Oct 2019 17:19:34 -0700 (PDT)
Received: from hermes.lan (204-195-22-127.wavecable.com. [204.195.22.127])
        by smtp.gmail.com with ESMTPSA id u5sm19501571pfl.25.2019.10.07.17.19.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Oct 2019 17:19:34 -0700 (PDT)
Date:   Mon, 7 Oct 2019 17:19:26 -0700
From:   Stephen Hemminger <stephen@networkplumber.org>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: leftover reference to ipfw
Message-ID: <20191007171926.788988d2@hermes.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

There is no ipfw command or api on Linux.
Yet there is still a reference to it on the ip(7) man page.

