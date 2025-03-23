Return-Path: <linux-man+bounces-2639-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D885A6CF7F
	for <lists+linux-man@lfdr.de>; Sun, 23 Mar 2025 14:26:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2F489188CF97
	for <lists+linux-man@lfdr.de>; Sun, 23 Mar 2025 13:26:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4599BA2E;
	Sun, 23 Mar 2025 13:26:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=clisp.org header.i=@clisp.org header.b="mVngIOOd";
	dkim=permerror (0-bit key) header.d=clisp.org header.i=@clisp.org header.b="Db4pd1VN"
X-Original-To: linux-man@vger.kernel.org
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de [81.169.146.217])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED572D51C
	for <linux-man@vger.kernel.org>; Sun, 23 Mar 2025 13:26:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=81.169.146.217
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742736403; cv=pass; b=iQ1TNqfZ1DTi9sV4U7kCIEu6wMjV2XaCecby406Jy7QXj8xvnJn22SCbAWdvinI1dQ+ocRCwqM2gLwMZ7vqUBT0i4fzUvvQTqTDuh1Xqz8I2lGZXXfBahE7WnA4+9+Cm3BDNA4a8mdu3QzsX1QOYHVUCR37reg9e5uEBeAL19tw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742736403; c=relaxed/simple;
	bh=nBQRh5BV89bjSnGnU2sLe/44z1PID8fRnLHmfaEjsXM=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=oUnXGPQV0htAzfO4EBcYcAvt07anWqOQFioW/NHL1AiIOvSGVKn7lz8409rQMIBg955N3/DZzl5vHWLt+t2n2o6xFXAfJP9uMEA5JKn4JwEuLz2c44tQkPI8pX4X77JBQgdlhjLya/0w9Lin4UY9nNv8OsnZ2N9pi7Vyw6ZKKDs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=clisp.org; spf=none smtp.mailfrom=clisp.org; dkim=pass (2048-bit key) header.d=clisp.org header.i=@clisp.org header.b=mVngIOOd; dkim=permerror (0-bit key) header.d=clisp.org header.i=@clisp.org header.b=Db4pd1VN; arc=pass smtp.client-ip=81.169.146.217
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=clisp.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=clisp.org
ARC-Seal: i=1; a=rsa-sha256; t=1742736028; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=XDpEB5tqQwLNJ6XXCG3etlBwWWVIeMGruKTNOloYM0FaGsmtiJg0iWnP7yK78GckYk
    cZzAmvCLXontyx3kusIfariEaq2AybT6cSncwWkL3ujvfSicX+63LqtMr/WdwfXsdWVG
    o2uffcBRn3k+Ow/W7fzPWjIxjiWJN/V1xh1wXwOquXwfOdMAphbqtcSZVFfTnZzDutOc
    Y9DtLNKzGVMmHjVWW7Xi0TkqNu3a6NdW9cxU03/D9ikGk8dQJe+otciEoHx8mBbTm6vG
    eZLv+nWi2OJ/s29z7ory6AOv9VB7mH6vM3GlPLZbXWxdk28CKDWo2ciweG9PYLDVn5BD
    KmhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1742736028;
    s=strato-dkim-0002; d=strato.com;
    h=References:In-Reply-To:Message-ID:Date:Subject:To:From:Cc:Date:From:
    Subject:Sender;
    bh=nBQRh5BV89bjSnGnU2sLe/44z1PID8fRnLHmfaEjsXM=;
    b=LI6hwRnLoD9CjPppXzhzaG2+OKd3DpXmCeNmvZEuK4+QRIto3RLSzF9VUuI3WyLZHF
    740V3Lk5vFjgF1DjENTTrx+RX1wX2H2fnG0FwZnzqfwfYNerS+ZXrm6vYNAejYUPXRlB
    dEbRxrhNuaT9sB38ysGp4AKAikRdFtkxKlFb0VbNsqAWLUF1HMe8Oicu92tiYMnvy66d
    UYsERAxQXD0gexXCLe5hDp4yP2NlxJV8alqTI8bytm3XrQOauFS/6H/EbaAh1Pu5qHv4
    I3SLs9NNokgVAv9RWtnm8lS19vrG86dtNPFxnJJjwErcUSogBFt2+tyLoBk+hW1M8vsQ
    g3RA==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1742736028;
    s=strato-dkim-0002; d=clisp.org;
    h=References:In-Reply-To:Message-ID:Date:Subject:To:From:Cc:Date:From:
    Subject:Sender;
    bh=nBQRh5BV89bjSnGnU2sLe/44z1PID8fRnLHmfaEjsXM=;
    b=mVngIOOdPHntXebs1P2RrdaVOBRTE6J1F5aKPQVRT8Ns8uWG/7sgxI0nNTkYY+YHRa
    3c1vq5hE4pXbCJSApFjImuit2GD75GGLNyiBxO6B2F0FAcZa2O7Z6v2jv5/wz1enYi1k
    Rx/NjxAvi0N1rQKYRsjBOjQ8CHaR/M0rNnltebODGFIJocGMrdo7jXLhGkVnPtEx2/TU
    ArGCVFin20Ze59hvQqfu6G0bCs5hkPR2rif3I1+B/DHceBmn4Pt7YkQXs/p69ULmXQip
    aKhee2xvb5bdbC/yHl/KGHY5wGkMp6x+yXw92fzeka7OAoEnRA2y5cZT2x1fXOH0pv/T
    boDQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1742736028;
    s=strato-dkim-0003; d=clisp.org;
    h=References:In-Reply-To:Message-ID:Date:Subject:To:From:Cc:Date:From:
    Subject:Sender;
    bh=nBQRh5BV89bjSnGnU2sLe/44z1PID8fRnLHmfaEjsXM=;
    b=Db4pd1VN0bfeN9JFK6kFMufF45iUTWYP9GnrLyWAoABQDhjUVKh95RKSBW4vS34D8x
    n+plv5ltUiI1j45PA8DA==
X-RZG-AUTH: ":Ln4Re0+Ic/6oZXR1YgKryK8brlshOcZlLnY4jECd2hdUURIbZgL8PX2QiTuZ3cdB8X/nqj+QRTyyQYtrOvJLmqiCHcfbcJjf"
Received: from nimes.localnet
    by smtp.strato.de (RZmta 51.3.0 AUTH)
    with ESMTPSA id N7dcf812NDKSL7x
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
	(Client did not present a certificate);
    Sun, 23 Mar 2025 14:20:28 +0100 (CET)
From: Bruno Haible <bruno@clisp.org>
To: linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>
Subject:
 Re: [PATCH v4 1/2] man/man3/strto[u]l.3: BUGS: Signed numbers and white space
 are not rejected
Date: Sun, 23 Mar 2025 14:20:28 +0100
Message-ID: <29050551.czjnFlTdjD@nimes>
Organization: GNU
In-Reply-To:
 <4a1de398dce8303ce6a3d729f8afcf73fb487e5f.1742730109.git.alx@kernel.org>
References:
 <939641570ee1c36bfd2ef8788789b54357ed5971.1742589662.git.alx@kernel.org>
 <cover.1742730109.git.alx@kernel.org>
 <4a1de398dce8303ce6a3d729f8afcf73fb487e5f.1742730109.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Looks all good to me.

Signed-off-by: Bruno Haible <bruno@clisp.org>




