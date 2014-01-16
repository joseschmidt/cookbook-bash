# coding: utf-8
require 'spec_helper'

describe 'bash::git_setup' do
  context file('/etc/gitconfig') do
    it 'is owned by root' do
      expect(subject).to be_owned_by('root')
    end # it

    it 'is in group root' do
      expect(subject).to be_grouped_into('root')
    end # it

    it 'is mode 0644' do
      expect(subject).to be_mode(644)
    end # it

    it 'matches expected content' do
      expect(subject.content).to match('[alias]')
    end # it
  end # context

  context file('/etc/profile.d/git-completion.sh') do
    it 'is owned by root' do
      expect(subject).to be_owned_by('root')
    end # it

    it 'is in group root' do
      expect(subject).to be_grouped_into('root')
    end # it

    it 'is mode 0644' do
      expect(subject).to be_mode(644)
    end # it

    it 'matches expected content' do
      expect(subject.content)
        .to match('bash/zsh completion support for core Git')
    end # it
  end # context

  context file('/etc/profile.d/git-prompt.sh') do
    it 'is owned by root' do
      expect(subject).to be_owned_by('root')
    end # it

    it 'is in group root' do
      expect(subject).to be_grouped_into('root')
    end # it

    it 'is mode 0644' do
      expect(subject).to be_mode(644)
    end # it

    it 'matches expected content' do
      expect(subject.content).to match('bash/zsh git prompt support')
    end # it
  end # context

end # describe
