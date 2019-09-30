Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 07D80C2022
	for <lists+linux-man@lfdr.de>; Mon, 30 Sep 2019 13:51:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729326AbfI3LvE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 30 Sep 2019 07:51:04 -0400
Received: from mail4.protonmail.ch ([185.70.40.27]:56633 "EHLO
        mail4.protonmail.ch" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726784AbfI3LvE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 30 Sep 2019 07:51:04 -0400
Date:   Mon, 30 Sep 2019 11:50:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me; s=proton;
        t=1569844262; bh=Cl2Oln2fSS7+Z22E/GghzFcQiioAUlrRDHUy0jW+X1c=;
        h=Date:To:From:Cc:Reply-To:Subject:Feedback-ID:From;
        b=agdM1XAEOWVo68paVzCc6q3FvY3tp2ChDxwYsSchV7VR0iTwPOIxRJMfpYt7EtGHV
         ShnpfhxhY3QlgZyf8UusIBPAYP2H+i1N1mzFw07z16gqBjBq8BKpFBEIwDwuEjktkC
         l/xOOJP4//VN6Zu9wiJXsJisK4AiwsDSCxA1PBng2VXzZZGGvVMo2KnDCcXuKy+kId
         gUpYFZyz/xNajYYf7RKpXGXGOZSNg0HPbOqUDpm20+/tNLP7LV+aWa1EORMrR0+jrB
         Hlt14UuO2cMN+HrrKEpbKXrnRLc6VZmGT2lxtN1UjTeQyRcf5MwSlpLquGwge9JhsC
         MKJ/gKXkocMsg==
To:     mtk.manpages@gmail.com
From:   Toni Kontinen <toni.kontinen@pm.me>
Cc:     linux-man@vger.kernel.org
Reply-To: Toni Kontinen <toni.kontinen@pm.me>
Subject: Bug: Small typo in gnutls_x509_crq_get_pk_oid(3)
Message-ID: <db037e4d-5e89-ef11-5dce-61939326b316@pm.me>
Feedback-ID: 7sREIc3YEzKrUpE1pVuK1RUrrKwCO0BHDutPHPe3e_T9v75rtE-btSju5B9RMTb5qxdiSwycC9oji0BtqkSdfw==:Ext:ProtonMail
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.2 required=7.0 tests=ALL_TRUSTED,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF autolearn=ham
        autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.protonmail.ch
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hey,

There's a small typo in the description section of=20
"gnutls_x509_crq_get_pk_oid(3)" page. It reads "This is function is..."=20
when it should read "This function is..."

Regards, Toni Kontinen

